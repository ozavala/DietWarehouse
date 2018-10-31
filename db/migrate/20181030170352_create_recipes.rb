class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.text :main_image
      t.text :thumb_image
      t.integer :position

      t.timestamps
    end
  end
end
