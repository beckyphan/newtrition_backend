class CreateNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrients do |t|
      t.string :ntype
      t.string :nname
      t.integer :nvalue
      t.string :nunit
      t.belongs_to :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
