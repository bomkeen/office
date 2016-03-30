<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Po;

/**
 * PoSearch represents the model behind the search form about `common\models\Po`.
 */
class PoSearch extends Po
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['po_id', 'plan_id', 'total'], 'integer'],
            [['po_date', 'created_at', 'updated_at','status'], 'safe'],
            [['price'], 'number'],
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
        $query = Po::find();

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
            'po_id' => $this->po_id,
            'po_date' => $this->po_date,
            'plan_id' => $this->plan_id,
            'price' => $this->price,
            'total' => $this->total,
            'status'=>$this->status,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        return $dataProvider;
    }
}
