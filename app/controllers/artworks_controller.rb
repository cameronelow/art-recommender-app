class ArtworksController < ApplicationController
  before_action :set_artwork, only: %i[ show edit update destroy ]

  # GET /artworks or /artworks.json
  def index
      #  @file_path = "./artic-api-data/json/artworks/group1/" 
      # #@count = Dir.glob(File.join("artic-api-data/json/artworks/", '**', '*')).select { |file| File.file?(file) }.count
      
      #  Dir.foreach(@file_path) do |filename|
      #   next if filename == '.' or filename == '..' or filename == '.DS_Store'
      #    @fullfilename = @file_path + filename
      #    @file = File.open(@fullfilename)
      #    @readfile = @file.read
      #    @parsedfile = JSON.parse(@readfile)
       
      #    #create the Artwork object for each json file in folder
      #    art = Artwork.new
        
      #    art.title = @parsedfile.fetch("title")
      #    art.date = @parsedfile.fetch("date_display")
      #    art.artist_name = @parsedfile.fetch("artist_title")
      #    art.image_id = @parsedfile.fetch("image_id")
      #    art.image_link = "https://www.artic.edu/iiif/2/#{art.image_id}/full/843,/0/default.jpg"
      #    art.place_of_origin = @parsedfile.fetch("place_of_origin")
      #    art.medium_display = @parsedfile.fetch("medium_display")
      #    art.department = @parsedfile.fetch("department_title")
      #    art.classification = @parsedfile.fetch("classification_title")
      #    art.save
        
      #    @file.close
      # end
    #Artwork.destroy_all
    @artworks = Artwork.all
  end

  # GET /artworks/1 or /artworks/1.json
  def show
  end

  # GET /artworks/new
  def new
    @artwork = Artwork.new
  end

  # GET /artworks/1/edit
  def edit
  end

  # POST /artworks or /artworks.json
  def create
    @artwork = Artwork.new(artwork_params)

    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: "Artwork was successfully created." }
        format.json { render :show, status: :created, location: @artwork }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artworks/1 or /artworks/1.json
  def update
    respond_to do |format|
      if @artwork.update(artwork_params)
        format.html { redirect_to @artwork, notice: "Artwork was successfully updated." }
        format.json { render :show, status: :ok, location: @artwork }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artworks/1 or /artworks/1.json
  def destroy
    @artwork.destroy
    respond_to do |format|
      format.html { redirect_to artworks_url, notice: "Artwork was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artwork_params
      params.require(:artwork).permit(:art_id, :api_link, :title, :date_display, :place_of_origin, :dimensions, :medium_display, :latitude, :longitude, :gallery_title, :artwork_type_title, :department_title, :artist_title, :style_title, :classification_title, :image_id, :image_link)
    end
end
