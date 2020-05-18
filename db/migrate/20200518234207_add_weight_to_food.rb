class AddWeightToFood < ActiveRecord::Migration[6.0]
  def change
    add_column :food, :weightInGrams, :integer
  end
end
