<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\models\Items;
use common\models\Dep;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model common\models\Plan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="plan-form">
    <div class="row">
        <div class="col-md-10">
    <?php $form = ActiveForm::begin(); ?>

    
 <div class=" row">
     <div class="col-md-4">
    <?= $form->field($model, 'dep_id')->dropDownList(
                    ArrayHelper::map(Dep::find()->all(), 'dep_id', 'dep_name'), ['prompt' => 'เลือกหน่วยงาน']
            )
            ?>
     </div>
     <div class="col-md-4">
    <?= $form->field($model, 'items_id')->dropDownList(
                    ArrayHelper::map(Items::find()->all(), 'items_id', 'items_name'), ['prompt' => 'เลือกรายการพัสดุ']
            )
            ?>
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

    <div class="form-group col-md-4">
        <?= Html::submitButton($model->isNewRecord ? 'บัททึก' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>
    </div>
    </div>
</div>
