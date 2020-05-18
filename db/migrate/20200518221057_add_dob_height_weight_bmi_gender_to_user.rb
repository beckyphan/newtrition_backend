class AddDobHeightWeightBmiGenderToUser < ActiveRecord::Migration[6.0]
  def change
    t.date :dob
    t.float :height
    t.float :weight
    t.float :bmi
    t.string :gender
  end
end
