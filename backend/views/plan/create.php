<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Plan */

$this->title = 'เพิ่มแผนการจัดซื้อ';
$this->params['breadcrumbs'][] = ['label' => 'Plans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="plan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
