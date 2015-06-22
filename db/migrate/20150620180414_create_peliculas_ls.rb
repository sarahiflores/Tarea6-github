class CreatePeliculasLs < ActiveRecord::Migration
  def change
    create_table :peliculas_ls do |t|
      t.string :Nombredepel

      t.timestamps null: false
    end
  end
end
