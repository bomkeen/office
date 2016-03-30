<?php 
rmrevin\yii\fontawesome\AssetBundle::register($this);
use rmrevin\yii\fontawesome\FA;
use yii\helpers\Html;
$name='nnnn';
?>

<div class="page-header">
    <h3>ระบบรายงาน</h3>
</div>
<div class="row">
    <div class="container container-fluid">
        <div class="list-group">
  <?= Html::a('รายการเบิกที่ยังไม่ได้รับของ',['/po/ponot'], ['class' => 'list-group-item list-group-item-warning']) ?>
            <?= Html::a('สรุปการเบิก',['/po/poyes'], ['class' => 'list-group-item list-group-item-danger']) ?>
  
  
</div>
    
    </div>
   
</div>