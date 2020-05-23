class CreateDris < ActiveRecord::Migration[6.0]
  def change
    create_table :dris do |t|
      t.integer :calories, default: 2000
      t.integer :fat, default: 78
      t.integer :sodium, default: 2300
      t.integer :potassium, default: 4700
      t.integer :carbohydrates, default: 275
      t.integer :protein, default: 15
      t.integer :vitaminA, default: 900
      t.integer :vitaminC, default: 90
      t.integer :calcium, default: 1300
      t.integer :iron, default: 18
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
