class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :track_no, null: false
      t.string :title, null: false
      t.references :album, null: false

      t.timestamps(null: false)
    end
  end
end
