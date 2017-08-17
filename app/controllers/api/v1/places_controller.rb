class Api::Vi::PlacesController < ApplicationController
  before_action :set_api_vi_place, only: [:show, :update, :destroy]

  # GET /api/vi/places
  # GET /api/vi/places.json
  def index
    @api_vi_places = Api::Vi::Place.all
  end

  # GET /api/vi/places/1
  # GET /api/vi/places/1.json
  def show
  end

  # POST /api/vi/places
  # POST /api/vi/places.json
  def create
    @api_vi_place = Api::Vi::Place.new(api_vi_place_params)

    if @api_vi_place.save
      render :show, status: :created, location: @api_vi_place
    else
      render json: @api_vi_place.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/vi/places/1
  # PATCH/PUT /api/vi/places/1.json
  def update
    if @api_vi_place.update(api_vi_place_params)
      render :show, status: :ok, location: @api_vi_place
    else
      render json: @api_vi_place.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/vi/places/1
  # DELETE /api/vi/places/1.json
  def destroy
    @api_vi_place.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_vi_place
      @api_vi_place = Api::Vi::Place.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_vi_place_params
      params.require(:api_vi_place).permit(:title, :comment)
    end
end
