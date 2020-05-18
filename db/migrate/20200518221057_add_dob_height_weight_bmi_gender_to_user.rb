class AddDobHeightWeightBmiGenderToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dob, :date
    add_column :users, :height, :float
    add_column :users, :weight, :float
    add_column :users, :bmi, :float
    add_column :users, :gender, :string
  end
end
