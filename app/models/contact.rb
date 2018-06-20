class Contact < ApplicationRecord
  belongs_to :client, required: false
  has_many :appointments
  has_many :users, through: :appointments
end
