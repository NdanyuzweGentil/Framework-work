class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.string :category
      t.integer :year
      t.string :price
      t.string :attachment

      t.timestamps
    end
  end
end
