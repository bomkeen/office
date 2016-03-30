<?php

namespace common\models;

use Yii;
use yii\behaviors\TimestampBehavior;
use yii\db\Expression;

class Po extends \yii\db\ActiveRecord
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
    public static function tableName()
    {
        return 'po';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['po_date', 'created_at', 'updated_at','status'], 'safe'],
            [['plan_id', 'total','ref_no'], 'integer'],
            [['price'], 'number']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'po_id' => 'Po ID',
            'po_date' => 'Date in',
            'plan_id' => '',
            'price' => 'Price',
            'total' => 'Total',
            'ref_no'=>'Ref_no',
            'status'=>'status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
