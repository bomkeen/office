<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\OutPlan */

$this->title = 'Create Out Plan';
$this->params['breadcrumbs'][] = ['label' => 'Out Plans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="out-plan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
