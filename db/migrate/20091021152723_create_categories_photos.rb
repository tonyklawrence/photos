class CreateCategoriesPhotos < ActiveRecord::Migration
  def self.up
    create_table :categories_photos, :id => false do |t|
      t.integer :category_id
      t.integer :photo_id
    end
  end

  def self.down
    drop_table :catagories_photos
  end
end
