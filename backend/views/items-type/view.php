<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\ItemsType */

$this->title = $model->items_type_id;
$this->params['breadcrumbs'][] = ['label' => 'Items Types', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="items-type-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->items_type_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->items_type_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'items_type_id',
            'items_type_name',
        ],
    ]) ?>

</div>
