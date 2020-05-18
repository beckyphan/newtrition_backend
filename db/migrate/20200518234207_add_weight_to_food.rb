class AddWeightToFood < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :weightInGrams, :integer
  end
end
