class User < ApplicationRecord
  has_many :clients
  has_many :contacts, through: :clients
  has_many :appointments, through: :contacts
end
