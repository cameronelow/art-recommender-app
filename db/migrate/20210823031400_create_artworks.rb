class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.integer :art_id
      t.string :api_link
      t.string :title
      t.date :date_display
      t.string :place_of_origin
      t.string :dimensions
      t.string :medium_display
      t.string :latitude
      t.string :longitude
      t.string :gallery_title
      t.string :artwork_type_title
      t.string :department_title
      t.string :artist_title
      t.string :style_title
      t.string :classification_title
      t.string :image_id
      t.string :image_link

      t.timestamps
    end
  end
end
