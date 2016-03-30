<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\ItemsType */

$this->title = 'แก้ไขรายการ: ' . ' ' . $model->items_type_name;
$this->params['breadcrumbs'][] = ['label' => 'Items Types', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->items_type_id, 'url' => ['view', 'id' => $model->items_type_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="items-type-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
