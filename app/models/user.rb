class User < ApplicationRecord
  has_secure_password
  has_many :dailylogs
  has_many :nutrients through: :foods
end
