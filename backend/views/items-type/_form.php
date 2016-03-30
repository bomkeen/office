<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\ItemsType */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="items-type-form">
    <div class="row">
        <div class="col-md-5">
    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'items_type_name')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'บันทึก' : 'บันทึก', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>
        </div></div>
</div>
