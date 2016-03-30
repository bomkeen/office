<?php

namespace common\models;

use Yii;
use common\models\Items;
use common\models\Dep;

/**
 * This is the model class for table "out_plan".
 *
 * @property integer $out_plan_id
 * @property integer $dep_id
 * @property integer $items_id
 * @property integer $price
 * @property string $date
 */
class OutPlan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'out_plan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [[], 'required'],
            [['out_plan_id', 'dep_id', 'items_id', 'price'], 'integer'],
            [['date'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'out_plan_id' => 'Out Plan ID',
            'dep_id' => 'Dep ID',
            'items_id' => 'Items ID',
            'price' => 'Price',
            'date' => 'Date',
             ///////
            'itemsname'=>'ชื่อรายการ',
            'depname'=>'หน่วยงาน',
        ];
    }
    public function getItems() {
        return @$this->hasOne(Items::className(), ['items_id' => 'items_id']);
    }

    public function getItemsName() {
        return @$this->items->items_name;
    }
    public function getDep() {
        return @$this->hasOne(Dep::className(), ['dep_id' => 'dep_id']);
    }

    public function getDepName() {
        return @$this->dep->dep_name;
    }
}
