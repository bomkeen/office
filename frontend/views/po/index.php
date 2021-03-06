<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\PoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="po-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Po', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'po_id',
            'po_date',
            'plan_id',
            'price',
            'total',
         

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
