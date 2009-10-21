class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :filename
      t.string :thumbnail
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
