class Section < ApplicationRecord
  belongs_to :grant, dependent: :destroy
  enum category: {
    "our_organization" => 1, 
    "who_we_are" => 2, 
    "our_mission" => 3, 
    "our_programs" => 4, 
    "financials" => 5, 
    "our_success" => 6, 
    "by_the_numbers" => 7, 
    "testimonials" => 8, 
    "solutions" => 9
  }

  def display_category
    category.gsub("_", " ").titleize
  end
end


