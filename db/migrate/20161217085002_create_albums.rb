class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.date :release_year, null: false
      t.references :artist, null: false
      t.references :label, null: false

      t.timestamps(null: false)
    end
  end
end
