class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true

  has_many :boilerplates
  belongs_to :organization

end
