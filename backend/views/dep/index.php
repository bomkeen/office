<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\DepSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'หน่วยงาน';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dep-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('เพิ่มรายการ', ['create'], ['class' => 'btn btn-success glyphicon glyphicon-plus']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'dep_id',
            'dep_name',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
