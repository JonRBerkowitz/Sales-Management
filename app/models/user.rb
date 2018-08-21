class User < ApplicationRecord
  has_many :clients
  has_many :contacts, through: :clients

  has_secure_password

  validates :username,
            :presence => { :message => "can't be left blank"},
            :uniqueness => { :message => "is already in use. Please choose another."},
            :length => { :minimum => 8, :message => "must at least 8 characters long"}

  validates :first_name,
            :presence => { :message => "can't be left blank"},
            :length => { :minimum => 2, :message => "must at least 2 characters long"}

  validates :last_name,
            :presence => { :message => "can't be left blank"},
            :length => { :minimum => 2, :message => "must be at least 2 characters long"}

  validates :password,
            :length => { :minimum => 8, :message => "must be at least 8 characters long"}



end
