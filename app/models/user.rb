class User < ApplicationRecord
  has_secure_password

  validates :first_name, presence: true,
  validates :last_name, presence: true

  validates :email, presence: true, uniqueness: true

  validates :title, presence: true
  validates :password, presence: true, uniqueness: true

  has_many :boilerplates
  belongs_to :organization

end
