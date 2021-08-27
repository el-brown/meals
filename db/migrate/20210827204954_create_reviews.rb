class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :comment
      t.string :name
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
