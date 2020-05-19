class DailylogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :log_date, :user_id
end
