<?php 
rmrevin\yii\fontawesome\AssetBundle::register($this);
use rmrevin\yii\fontawesome\FA;
use yii\helpers\Html;
$name='nnnn';
?>


<div class="row">
    <div class="container container-fluid">
        <?php foreach ($dep as $d) {?>
        <div class="col-md-3">
            <div class="panel panel-success">
                <div class="panel-body">
            <center>
            <?= Html::a(' '.$d['dep_name'], ['/report/depview','dep_id'=>$d['dep_id']], ['class'=>'btn  btn-success fa fa-plus']) ?>
            </center>
        </div>
            </div>
        </div>
        <?php }?>
    
    </div>
   
</div>