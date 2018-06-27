class User < ApplicationRecord
  has_many :clients
  has_many :contacts, through: :clients

  has_secure_password
end
