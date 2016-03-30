<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\models\Dep;
use common\models\Items;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;
date_default_timezone_set('Asia/Bangkok');

/* @var $this yii\web\View */
/* @var $model common\models\OutPlan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="out-plan-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-md-4">
     
    <?= $form->field($model, 'dep_id')->dropDownList(
                    ArrayHelper::map(Dep::find()->all(), 'dep_id', 'dep_name'), ['prompt' => 'เลือกหน่วยงาน']
            )
            ?>
     </div>
      
        <div class="col-md-4">
    <?= $form->field($model, 'items_id')->dropDownList(
                    ArrayHelper::map(Items::find()->all(), 'items_id', 'items_name'), ['prompt' => 'เลือกพัสดุ']
            )
            ?>
        </div>
        </div>
    
    <div class="row">
        <div class="col-md-4">
    <?= $form->field($model, 'price')->textInput() ?>
        </div>
        <div class="col-md-4">
             
     <?=
    $form->field($model, 'date')->widget(DatePicker::ClassName(),
    [
    'name' => 'date', 
    'options' => ['placeholder' => 'เลือกวันที่'],
    'pluginOptions' => [
        'format' => 'yyyy-mm-dd',
        'todayHighlight' => true,
        'language'=>Yii::$app->language
    ]
]);?>
        </div>
    </div>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
