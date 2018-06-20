class Appointment < ApplicationRecord
  belongs_to :contact, required: false
  belongs_to :user, required: false
end
