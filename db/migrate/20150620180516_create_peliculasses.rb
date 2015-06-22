class CreatePeliculasses < ActiveRecord::Migration
  def change
    create_table :peliculasses do |t|
      t.text :NombredePeliculas
      t.integer :rate

      t.timestamps null: false
    end
  end
end
