<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\ItemsType */

$this->title = 'เพิ่มหน่วยรายการพัสดุ';
$this->params['breadcrumbs'][] = ['label' => 'Items Types', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="items-type-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
