<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Dep */

$this->title = 'เพิ่มหน่วยงาน';
$this->params['breadcrumbs'][] = ['label' => 'Deps', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dep-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
