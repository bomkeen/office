<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Po */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="po-form">
    <div class="row">

    <?php $form = ActiveForm::begin(); ?>
        <div class="col-md-6 col-md-offset-2">
   
    <?= $form->field($model, 'price')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'total')->textInput() ?>
            <?= $form->field($model, 'status')->textInput() ?>
            

        <?= $form->field($model, 'status')->radioList(array('Y'=>'รับของแล้ว','N'=>'ยังไม่รับของ')); ?>
        

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>
        </div>
        </div>
</div>
