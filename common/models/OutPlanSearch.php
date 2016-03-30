<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\OutPlan;

/**
 * OutPlanSearch represents the model behind the search form about `common\models\OutPlan`.
 */
class OutPlanSearch extends OutPlan
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['out_plan_id', 'dep_id', 'items_id', 'price'], 'integer'],
            [['date'], 'safe'],
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
        $query = OutPlan::find();

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
            'out_plan_id' => $this->out_plan_id,
            'dep_id' => $this->dep_id,
            'items_id' => $this->items_id,
            'price' => $this->price,
            'date' => $this->date,
        ]);

        return $dataProvider;
    }
}
