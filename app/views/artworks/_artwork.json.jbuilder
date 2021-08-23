json.extract! artwork, :id, :art_id, :api_link, :title, :date_display, :place_of_origin, :dimensions, :medium_display, :latitude, :longitude, :gallery_title, :artwork_type_title, :department_title, :artist_title, :style_title, :classification_title, :image_id, :image_link, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
