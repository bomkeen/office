<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\OutPlan */

$this->title = 'Update Out Plan: ' . ' ' . $model->out_plan_id;
$this->params['breadcrumbs'][] = ['label' => 'Out Plans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->out_plan_id, 'url' => ['view', 'id' => $model->out_plan_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="out-plan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
