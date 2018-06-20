class Address < ApplicationRecord
  belongs_to :client, required: false
end
