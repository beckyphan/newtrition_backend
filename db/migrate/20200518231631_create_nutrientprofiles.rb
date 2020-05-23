class CreateNutrientprofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrientprofiles do |t|
      t.integer :calories, default: 0
      t.integer :fat, default: 0
      t.integer :sodium, default: 0
      t.integer :potassium, default: 0
      t.integer :carbohydrates, default: 0
      t.integer :protein, default: 0
      t.integer :vitaminA, default: 0
      t.integer :vitaminC, default: 0
      t.integer :calcium, default: 0
      t.integer :iron, default: 0
      t.belongs_to :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
