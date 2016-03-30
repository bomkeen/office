<?php

use yii\helpers\Html;
use yii\grid\GridView;


$this->title = 'รายการเบิกที่ยังไม่ได้รับของ';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="po-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
        [
'label'=>'วันที่รับบริการ',

'format' => 'raw',
'value'=>function ($model) {
        $strYear = date("Y",strtotime($model['po_date']))+543;
		$strMonth= date("n",strtotime($model['po_date']));
		$strDay= date("j",strtotime($model['po_date']));
		$strMonthCut = Array("","ม.ค.","ก.พ.","มี.ค.","เม.ย.","พ.ค.","มิ.ย.","ก.ค.","ส.ค.","ก.ย.","ต.ค.","พ.ย.","ธ.ค.");
		$strMonthThai=$strMonthCut[$strMonth];
		return "$strDay $strMonthThai $strYear";
//return Yii::$app->thaiFormatter->asDate($data->today,'medium');


},
],
            
            'dep_name',
            'items_name',
         [ // แสดงข้อมูลออกเป็นสีตามเงื่อนไข
          'attribute' => 'status',
          'format'=>'html',
            'header'=>'สถานะรับของ',
          'value'=>function($model, $key, $index, $column){
            return $model['status']=='Y' ? "<span style=\"color:green;\">YES</span>":"<span style=\"color:red;\">No</span>";
          }
        ],
            //'status',
            //'total',
            //'total_now',
                [
                    'attribute'=>'po_total',
                    'label'=>'จำนวนที่เบิก'
                    ],
        //'po_total',
         
                                           [
'label'=>'ลงบันทึกข้อมูล',
    
'format' => 'raw',
'value'=>function ($data) {
return Html::a(' บันทึกข้อมูล',['po/poupdate','id'=>$data['po_id']],['class' => 'btn btn-success glyphicon glyphicon-list']);


},'visible' => !Yii::$app->user->isGuest],
           // ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
