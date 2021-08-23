class AddDateDisplayToArtworks < ActiveRecord::Migration[6.1]
  def change
    add_column :artworks, :date_display, :string
  end
end
