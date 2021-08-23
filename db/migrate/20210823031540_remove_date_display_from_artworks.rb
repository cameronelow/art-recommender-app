class RemoveDateDisplayFromArtworks < ActiveRecord::Migration[6.1]
  def change
    remove_column :artworks, :date_display
  end
end
