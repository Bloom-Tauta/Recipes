class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.string :recipe_category
      t.text :description
      t.string :recipe_thumb
      t.string :country_of_origin
      t.string :number_of_people_served
      t.text :ingredients
      t.text :instructions
      t.string :youtube_code
      t.boolean :approved, default: false
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean :is_local, default: false

      t.timestamps
    end
  end
end
