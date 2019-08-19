class CreateChefs < ActiveRecord::Migration[5.2]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :specialty
      t.integer :rating
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
