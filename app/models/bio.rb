class Bio < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :title, presence: true
  validates :bio, presence: true

  belongs_to :organization
  has_many :grants_bios
  has_many :grants, :through => :grants_bios
end
