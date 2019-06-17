class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :status
      t.string :species
      t.string :gender
      t.string :image
      t.string :origin
      t.string :current_location

      t.timestamps
    end
  end
end
