<?php

use yii\helpers\Html;
use yii\grid\GridView;


date_default_timezone_set('Asia/Bangkok');
/* @var $this yii\web\View */
/* @var $searchModel common\models\PoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'รายละเอียดการเบิก';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="po-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
       <?php //Html::a('Create Po', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php
if (isset($dataProvider))
    echo \kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        'formatter' => ['class' => 'yii\i18n\Formatter','nullDisplay' => '-'],
        'showPageSummary' => true,
        'responsive' => TRUE,
        'hover' => true,
        'floatHeader' => true,
        
        'panel' => [
            'heading'=>'<h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i></h3>',
            'before' => '',
            'type' => \kartik\grid\GridView::TYPE_INFO,
            
        ],
        'columns' => [
            //'po_date:date:วันรับข้อมูล',
           [
'label'=>'วันที่รับบริการ',

'format' => 'raw',
'value'=>function ($data) {
        $strYear = date("Y",strtotime($data['po_date']))+543;
		$strMonth= date("n",strtotime($data['po_date']));
		$strDay= date("j",strtotime($data['po_date']));
		$strMonthCut = Array("","ม.ค.","ก.พ.","มี.ค.","เม.ย.","พ.ค.","มิ.ย.","ก.ค.","ส.ค.","ก.ย.","ต.ค.","พ.ย.","ธ.ค.");
		$strMonthThai=$strMonthCut[$strMonth];
		return "$strDay $strMonthThai $strYear";
//return Yii::$app->thaiFormatter->asDate($data->today,'medium');


},
],

            [
            'attribute' => 'items_name',
            'header' => 'รายการพัสดุ',
                'pageSummary'=>'รวม'
        ],
            [
            'attribute' => 'price',
            'header' => 'ราคา',
                'pageSummary'=>true
        ],
            [
            'attribute' => 'total',
            'header' => 'จำนวน',
                'pageSummary'=>true
        ],
        [ // แสดงข้อมูลออกเป็นสีตามเงื่อนไข
          'attribute' => 'status',
          'format'=>'html',
            'header'=>'สถานะรับของ',
          'value'=>function($model, $key, $index, $column){
            return $model['status']=='Y' ? "<span style=\"color:green;\">YES</span>":"<span style=\"color:red;\">No</span>";
          }
        ],
            
[
        'class' => '\kartik\grid\ActionColumn',
        'deleteOptions' => ['label' => '<i class="glyphicon glyphicon-remove"></i>']
    ]            

//'total',
            // 'created_at',
            // 'updated_at',
       
            //['class' => 'yii\grid\ActionColumn'],

        ],
    ]); ?>

</div>
