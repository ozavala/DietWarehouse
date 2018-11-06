class AddDietRefToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :diet, foreign_key: true
  end
end
