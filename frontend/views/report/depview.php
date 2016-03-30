<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use kartik\export\ExportMenu;
use yii\bootstrap\Modal;
use yii\helpers\Url;

?>

<div class="row">
    <div class="col-md-12">
      <?php 
Modal::begin([
    'header'=>'<h4>บันทึกข้อมูล</h4>',
    'id'=>'modal',
    'size'=>'modal-lg',
]);
echo "<div id='modalContent'></div>";
Modal::end();
      ?>
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
          
            [
            'attribute' => 'items',
            'header' => 'รายการพัสดุ',
                'pageSummary'=>'รวม'
        ],
            [
            'attribute' => 'total',
            'header' => 'จำนวนตามแผน',
                'pageSummary'=>true
        ],
            [
            'attribute' => 'total_now',
            'header' => 'จำนวนคงเหลือ',
                'pageSummary'=>true
        ], 
             [
            'attribute' => 'ty',
            'header' => 'หน่วย',
                //'pageSummary'=>true
        ],
                                           [
'label'=>'รายละเอียดการเบิก',
    
'format' => 'raw',
'value'=>function ($data) {
return Html::a(' รายละเอียด',['po/list','plan_id'=>$data['plan_id']],['class' => 'btn btn-success glyphicon glyphicon-list']);


},
],
                                               
            [
'label'=>'เบิก',
    
'format' => 'raw',
'value'=>function ($data) {
    return Html::a(' เบิก',['po/insert','plan_id'=>$data['plan_id'],'dep_id'=>$data['dep_id']],['class' => 'btn btn-danger glyphicon glyphicon-plus']);
//return Html::button(' เบิก',['value'=>url::to(['index.php?r=po/insert','plan_id'=>$data['plan_id']]),'class' => 'btn btn-danger glyphicon glyphicon-plus','id'=>'modalButton']);

},'visible' => !Yii::$app->user->isGuest],
        
            
           
        ],
    ]);
?>
            
       
    </div>
    
</div>