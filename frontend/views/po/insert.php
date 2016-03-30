<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Po */

$this->title = 'บันทึกข้อมูลการสั่งซื้อ';
$this->params['breadcrumbs'][] = ['label' => 'Pos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="po-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_formin', [
        'model' => $model,
        'plan_id'=>$plan_id,
            'dep_id'=>$dep_id
    ]) ?>

</div>
