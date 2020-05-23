class CreateNutrientprofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrientprofiles do |t|
      t.string :name
      t.decimal :serving
      t.string :size
      t.float :weight
      t.float :calories, default: 0
      t.float :fat, default: 0
      t.float :sodium, default: 0
      t.float :potassium, default: 0
      t.float :carbohydrates, default: 0
      t.float :protein, default: 0
      t.float :vitaminA, default: 0
      t.float :vitaminC, default: 0
      t.float :calcium, default: 0
      t.float :iron, default: 0

      t.timestamps
    end
  end
end
