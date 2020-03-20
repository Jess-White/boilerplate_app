class GrantsBio < ApplicationRecord
  belongs_to :grant 
  belongs_to :bio
end
