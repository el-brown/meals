class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :stars
      t.belongs_to :dinner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
