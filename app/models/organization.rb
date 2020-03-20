class Organization < ApplicationRecord
  has_many :bios
  has_many :grants
  has_many :users
end
