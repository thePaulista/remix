class CreatePlaymasterSongs < ActiveRecord::Migration
  def change
    create_table :playmaster_songs do |t|
      t.references :song, index: true, foreign_key: true
      t.references :playmaster, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
