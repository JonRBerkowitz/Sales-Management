class Client < ApplicationRecord
  belongs_to :user, required: false
  has_many :contacts
  has_one :address
end
