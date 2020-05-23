class CreateDailylogFoodJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :dailylogs, :foods do |t|
      t.index [:dailylog_id, :food_id]
      t.index [:food_id, :dailylog_id]
    end
  end
end
