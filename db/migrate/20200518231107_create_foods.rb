class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :serving
      t.string :size
      t.belongs_to :dailylog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
