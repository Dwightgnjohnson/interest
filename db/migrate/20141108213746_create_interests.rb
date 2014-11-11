class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :url
      t.string :photo
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
