<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Plan;

/**
 * PlanSearch represents the model behind the search form about `common\models\Plan`.
 */
class PlanSearch extends Plan
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['plan_id', 'dep_id', 'items_id', 'total', 'total_now'], 'integer'],
            [['price', 'price_now'], 'number'],
            [['created_at', 'updated_at','depname'], 'safe'],
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
        $query = Plan::find();
        $query->joinWith(['dep']);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        
        $dataProvider->sort->attributes['depname'] = [
        'asc' => ['depname' => SORT_ASC],
        'desc' => ['depname' => SORT_DESC],
    ];

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'plan_id' => $this->plan_id,
            'dep_id' => $this->dep_id,
            'items_id' => $this->items_id,
            'total' => $this->total,
            'total_now' => $this->total_now,
            'price' => $this->price,
            'price_now' => $this->price_now,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            
            
        ]);
        //$query->orFilterWhere(['like', 'depname', $this->depname]);

        return $dataProvider;
    }
}
