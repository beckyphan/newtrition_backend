class DailylogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :log_date, :user_id
  belongs_to :user
end
