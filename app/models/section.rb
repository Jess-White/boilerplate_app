class Section < ApplicationRecord
  belongs_to :grant
  enum category: ["our_organization", "who_we_are", "our_mission", "our_programs", "financials", "our_success", "by_the_numbers", "testimonials", "solutions"]
end


