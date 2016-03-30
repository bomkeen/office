<?php

namespace frontend\controllers;

use Yii;
use common\models\Po;
use common\models\PoSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\data\ActiveDataProvider;
use common\models\Plan;

class PoController extends Controller
{
   public function behaviors() {

        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['update','delete'], //เฉพาะ action create,update
                'rules' => [
                    [
                        'allow' => true, //ยอมให้เข้าถึง
                        'roles' => ['@']//คนที่เข้าสู่ระบบ 
                    ]
                ]
            ],
        ];
    }
  
    public function actionIndex()
    {
        $searchModel = new PoSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
   
    public function actionPoreport() {
        return $this->render('poreport');
        
    }
    public function actionPoyes() {
         $sql = "SELECT SUM(po.price) as price,d.dep_name as dep_name,d.dep_id as dep_id from po
JOIN plan p on po.plan_id=p.plan_id
JOIN dep d ON p.dep_id=d.dep_id
WHERE po.status ='Y' and po.price >0 GROUP BY d.dep_id";
        
        $po = \Yii::$app->db->createCommand($sql)->queryAll();
        return $this->render('poyes',[
                'po'=>$po
                ]);
        
    }
    public function actionPonot()
     {
        $searchModel = new PoSearch();
        $sql = "SELECT p.po_date as po_date
,d.dep_name as dep_name
,i.items_name as items_name
,p.status as status
,plan.total as total 
,plan.total_now as total_now
,p.total as po_total
,p.po_id as po_id
 FROM po p 
JOIN plan ON p.plan_id=plan.plan_id
JOIN dep d ON plan.dep_id=d.dep_id
JOIN items i on i.items_id=plan.items_id
where status ='N'";
              $po = \Yii::$app->db->createCommand($sql)->queryAll();
              $dataProvider = new \yii\data\ArrayDataProvider([
            'key' => 'po_id',
            'allModels' => $po,
           'pagination' => ['pageSize' => 30,],
        ]);
        return $this->render('ponot', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
   public function actionPoupdate($id)
    {
        $model = $this->findModel($id);
       $dep_id = Plan::find()->where(['plan_id' => $model->plan_id])->one();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['po/ponot']);
        } else {
            return $this->render('poupdate', [
                'model' => $model,
            ]);
        }
    }

    
    
    
     public function actionList($plan_id)
    {
       
 $sql = "SELECT p.*,t.items_name FROM po p
JOIN plan pl on pl.plan_id=p.plan_id
JOIN items t on pl.items_id=t.items_id
WHERE p.plan_id=$plan_id
";
     
              $po = \Yii::$app->db->createCommand($sql)->queryAll();
              $dataProvider = new \yii\data\ArrayDataProvider([
            'key' => 'po_id',
            'allModels' => $po,
           //'pagination' => ['pageSize' => 5,],
        ]);
        return $this->render('list', [
            //'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

   
    public function actionCreate()
    {
        $model = new Po();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['report', 'id' => $model->po_id]);
        } else {
            return $this->render('create', [
                'model' => $model
                
            ]);
        }
    }
    public function actionInsert($plan_id,$dep_id)
    {
        $model = new Po();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['report/depview','dep_id'=>$dep_id]);
        } else {
            return $this->render('insert', [
                'model' => $model,
                'plan_id'=>$plan_id,
                'dep_id'=>$dep_id
                    
            ]);
        }
    }


    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
       $dep_id = Plan::find()->where(['plan_id' => $model->plan_id])->one();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['report/depview', 'dep_id' => $dep_id->dep_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

   
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Po model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Po the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Po::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
