<?php


namespace frontend\controllers;

class ReportController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }
    
    public function actionDepview($dep_id) {
     $sql = "SELECT d.dep_name as dep,i.items_name as items,p.plan_id as plan_id
,p.total as total,p.total_now as total_now,ty.items_type_name as ty,p.dep_id as dep_id
 from plan as p 
JOIN dep d on p.dep_id=d.dep_id
JOIN items i ON i.items_id=p.items_id
left outer join items_type ty on ty.items_type_id=i.items_type_id
 WHERE p.dep_id=$dep_id
";
     
              $dep = \Yii::$app->db->createCommand($sql)->queryAll();
              $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',//
            'allModels' => $dep,
           //'pagination' => ['pageSize' => 5,],
        ]);
        return $this->render('depview',[
            'dep'=>$dep,
            'dataProvider' => $dataProvider,
           
        ]);
        
    }

}
?>