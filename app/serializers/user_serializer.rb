class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password_digest, :dris_id
  belongs_to :dri
end
