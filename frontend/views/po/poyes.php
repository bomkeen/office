<?php
rmrevin\yii\fontawesome\AssetBundle::register($this);

use rmrevin\yii\fontawesome\FA;
use yii\helpers\Html;

$name = 'nnnn';
?>
<div class="page-header"><h3>สรุปการเบิกจ่าย</h3></div>

<div class="row">
    <div class="col-md-6 col-md-offset-3">
    <ul class="list-group">
<?php foreach ($po as $p) { ?>
        <li class="list-group-item">
            <span class="badge"> <?php echo $p['price']?> บาท </span> <?= Html::a(' ' . $p['dep_name'], ['/report/depview', 'dep_id' => $p['dep_id']], ['class' => 'btn  btn-success fa fa-link']) ?>
        </li>
<?php } ?>
    </ul>

    </div></div>