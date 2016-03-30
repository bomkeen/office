<?php

namespace common\models;

use Yii;
use common\models\Group;
use common\models\ItemsType;

/**
 * This is the model class for table "items".
 *
 * @property integer $items_id
 * @property string $items_name
 * @property integer $group_id
 */
class Items extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'items';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['group_id'], 'integer'],
            [['items_name'], 'string', 'max' => 255],
            [['items_type_id'], 'safe'],
            
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'items_id' => 'Items ID',
            'items_name' => 'Items Name',
            'group_id' => 'Group ID',
            'items_type_id'=>'หน่วย',
            'typename'=>'หน่วย',
            'groupname'=>'กลุ่มรายการ',
        ];
    }
    
    public function getgroup() {
        return @$this->hasOne(Group::className(), ['group_id' => 'group_id']);
    }

    public function getGroupName() {
        return @$this->group->group_name;
    }
    public function getType() {
        return @$this->hasOne(ItemsType::className(), ['items_type_id' => 'items_type_id']);
    }

    public function getTypeName() {
        return @$this->type->items_type_name;
    }
}
