class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :diet

  has_many :ingredients, inverse_of: :recipe, dependent: :destroy
  has_many :directions, inverse_of: :recipe, dependent: :destroy


  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true
  

  validates_presence_of :title, :description, :main_image, presence: true

  mount_uploader :thumb_image, RecipeUploader
  mount_uploader :main_image, RecipeUploader
end
