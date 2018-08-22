class Client < ApplicationRecord
  belongs_to :user, required: false
  has_many :contacts
  has_one :address

  validates :name, length: { minimum: 2, message: "LETTERS" }

  scope :high, -> { where(priority: "HIGH") }
  scope :medium, -> { where(priority: "MEDIUM") }
  scope :low, -> { where(priority: "LOW") }

end
