class Diet < ApplicationRecord
  has_many :recipes, inverse_of: :diet, dependent: :destroy
  accepts_nested_attributes_for :recipes, reject_if: :all_blank, allow_destroy: true
end
