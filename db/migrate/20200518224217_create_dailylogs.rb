class CreateDailylogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dailylogs do |t|
      t.date :log_date
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
