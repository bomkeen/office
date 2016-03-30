<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\Group;
use common\models\ItemsType;

/* @var $this yii\web\View */
/* @var $model common\models\Items */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="items-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'items_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'group_id')->dropDownList(
                    ArrayHelper::map(Group::find()->all(), 'group_id', 'group_name'), ['prompt' => 'เลือกกลุ่มพัสดุ']
            )
            ?>
    <?= $form->field($model, 'items_type_id')->dropDownList(
                    ArrayHelper::map(ItemsType::find()->all(), 'items_type_id', 'items_type_name'), ['prompt' => 'เลือกหน่วย']
            )
            ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
