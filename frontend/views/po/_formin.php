<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
date_default_timezone_set('Asia/Bangkok');
/* @var $this yii\web\View */
/* @var $model common\models\Po */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="po-form">
    <div class="row">
        <div class="col-md-10 col-md-offset-2">
    <?php $form = ActiveForm::begin(); ?>
            <div class="row">
                <p></p>
            </div>
            <div class="row">
                <div class="col-md-4">
    <?=
    $form->field($model, 'po_date')->widget(DatePicker::ClassName(),
    [
    'name' => 'po_date', 
    'options' => ['placeholder' => 'เลือกวันที่'],
    'pluginOptions' => [
        'format' => 'yyyy-mm-dd',
        'todayHighlight' => true,
        'language'=>Yii::$app->language
    ]
]);?>
                </div>
                <div class="col-md-4">
               <?= $form->field($model, 'ref_no')->textInput() ?>     
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
    

<?= $form->field($model, 'total')->textInput() ?>
                </div>
                <div class="col-md-4">
<?= $form->field($model, 'price')->textInput(['maxlength' => true]) ?>
                </div>
            </div>
                
    <?= $form->field($model, 'status')->radioList(array('Y'=>'รับของแล้ว','N'=>'ยังไม่รับของ')); ?>        

<?= $form->field($model, 'plan_id')->Input('hidden', ['value' => $plan_id]) ?>

    <div class="form-group">
    <?= Html::submitButton($model->isNewRecord ? 'บันทึก' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

<?php ActiveForm::end(); ?>
        </div></div>
</div>
