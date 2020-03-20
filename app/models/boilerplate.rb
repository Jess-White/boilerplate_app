class Boilerplate < ApplicationRecord
  validates :name, presence: true
  validates :boilerplate_text, presence: true

  belongs_to :category
  belongs_to :user
end
