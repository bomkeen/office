<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "items_type".
 *
 * @property integer $items_type_id
 * @property string $items_type_name
 */
class ItemsType extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'items_type';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['items_type_name'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'items_type_id' => 'Items Type ID',
            'items_type_name' => 'ประเภทของหน่วยการราย',
        ];
    }
}
