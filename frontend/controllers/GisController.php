<?php

namespace frontend\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use common\models\ErNursingDetail;



class GisController extends \yii\web\Controller {
public $enableCsrfValidation = false;
    public function behaviors() {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function actions() {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex() {
         $er = \Yii::$app->hosxp->createCommand("SELECT 
er.accident_gis_lat as lat
,er.accident_gis_long as lng
,ov.hn as hn
,ov.vstdate as date
FROM er_nursing_detail er
JOIN ovst ov on er.vn=ov.vn
JOIN er_regist as res on er.vn=res.vn
where er.accident_gis_lat IS not NULL
AND res.er_pt_type=1
")->queryAll(); 
         
        

        return $this->render('index', [
            'er' => $er,
           ]);
    }

    public function actionList() {
        $date1 = date("Y-m-d");
        $date2 = date("Y-m-d");
       
         if (Yii::$app->request->isPost) {
            $request = Yii::$app->request;
            $date1 = $request->post('date1');  
            $date2 = $request->post('date2');
           
            $nonlat=  \yii::$app->hosxp->createCommand("SELECT 
er.accident_gis_lat as lat
,er.accident_gis_long as lng
,ov.hn as hn
,ov.vn as vn
,ov.vstdate as date
FROM er_nursing_detail er
JOIN ovst ov on er.vn=ov.vn
JOIN er_regist as res on er.vn=res.vn
where er.accident_gis_lat is NULL
and ov.vstdate between '$date1' and '$date2'
AND res.er_pt_type=1")->queryAll();
            }
 else {
        $nonlat=  \yii::$app->hosxp->createCommand("SELECT 
er.accident_gis_lat as lat
,er.accident_gis_long as lng
,ov.hn as hn
,ov.vn as vn
,ov.vstdate as date
FROM er_nursing_detail er
JOIN ovst ov on er.vn=ov.vn
JOIN er_regist as res on er.vn=res.vn
where er.accident_gis_lat is NULL
and ov.vstdate between '$date1' and '$date2'
AND res.er_pt_type=1")->queryAll();
 }
        $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',//
            'allModels' => $nonlat,
            'pagination' => ['pageSize' => 1500],
        ]);
        
        return $this->render('list',[
           'dataProvider' => $dataProvider,
            'date1'=>$date1,
            'date2'=>$date2,
        ]);
        
    }
    public function actionPin($vn) {
         if (Yii::$app->request->isPost) {
            $request = Yii::$app->request;
            $lat = $request->post('lat');
            $lng=$request->post('lng');
            $vn=$request->post('vn');
            
            $model= ErNursingDetail::findOne($vn);
            $model->accident_gis_lat=$lat;
            $model->accident_gis_long=$lng;
            $model->save();
                        
            
         }
 
        return $this->render('pin',[
            'vn'=>$vn,
        ]);
  
    }

}
