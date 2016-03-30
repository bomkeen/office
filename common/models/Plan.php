<?php

namespace common\models;

use Yii;
use common\models\Items;
use common\models\Dep;
use yii\db\Expression;
use yii\behaviors\TimestampBehavior;

class Plan extends \yii\db\ActiveRecord
{
    public function behaviors()
{
    return [
        [
            'class' => TimestampBehavior::className(),
            //'createdAtAttribute' => 'create_time',
            //'updatedAtAttribute' => 'update_time',
            'value' => new Expression('NOW()'),
        ],
    ];
}
    
    
    
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'plan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['total','dep_id','items_id'], 'required'],
            [['plan_id', 'dep_id', 'items_id', 'total', 'total_now'], 'integer'],
            [['price', 'price_now'], 'number'],
            [['created_at', 'updated_at'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'plan_id' => 'Plan ID',
            'dep_id' => 'Dep ID',
            'items_id' => 'Items ID',
            'total' => 'จำนวนรวม',
            'total_now' => 'จำนวนปัจจุบัน',
            'price' => 'ราคารวม',
            'price_now' => 'ราคาซื้อไป',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
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
