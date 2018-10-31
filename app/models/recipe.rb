class Recipe < ApplicationRecord
  def self.angular
   where(description: "Angular")
 end
end
