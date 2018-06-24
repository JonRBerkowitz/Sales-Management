class User < ApplicationRecord
  has_many :clients
  has_many :contacts, through: :clients
  has_many :appointments
  has_many :contacts, through: :appointments

  has_secure_password
end
