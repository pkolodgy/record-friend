class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.references :user, null: false
      t.references :taggable, polymorphic: true, index: true

      t.timestamps(null:false)
    end
  end
end
