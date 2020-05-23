class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password_digest, :dri_id
  belongs_to :dri
end
