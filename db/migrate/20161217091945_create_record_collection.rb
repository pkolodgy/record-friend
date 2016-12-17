class CreateRecordCollection < ActiveRecord::Migration
  def change
    create_table :record_collections do |t|
      t.references :user, null: false
      t.references :album, null: false
      t.integer :rating, null: false
      t.text :review
    end
  end
end
