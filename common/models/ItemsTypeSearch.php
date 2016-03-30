<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\ItemsType;

/**
 * ItemsTypeSearch represents the model behind the search form about `common\models\ItemsType`.
 */
class ItemsTypeSearch extends ItemsType
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['items_type_id'], 'integer'],
            [['items_type_name'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = ItemsType::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'items_type_id' => $this->items_type_id,
        ]);

        $query->andFilterWhere(['like', 'items_type_name', $this->items_type_name]);

        return $dataProvider;
    }
}
