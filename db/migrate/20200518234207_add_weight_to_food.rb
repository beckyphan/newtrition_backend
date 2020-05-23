class AddWeightToFood < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :grams, :integer
  end
end
