class Contact < ApplicationRecord
  belongs_to :client, required: false
  has_many :appointments
end
