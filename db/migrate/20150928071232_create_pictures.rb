class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image_id, null: false

      t.timestamps null: false
    end
  end
end
