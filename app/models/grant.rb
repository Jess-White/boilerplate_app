class Grant < ApplicationRecord
  validates :name, presence: true
  validates :purpose, presence: true
  validates :funding_org, presence: true
  validates :funding_org_website, presence: true
  validates :funding_org_rfp_webpage, presence: true
  validates :deadline, presence: true

  has_many :sections
  belongs_to :organization

  has_many :grants_bios
  has_many :bios, :through => :grants_bios
end
