class CreatePlaymasters < ActiveRecord::Migration
  def change
    create_table :playmasters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
