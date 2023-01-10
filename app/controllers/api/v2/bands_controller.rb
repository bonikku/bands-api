class Api::V2::BandsController < ApplicationController
  before_action :set_band, only: %i[ show update destroy ]

  # GET /bands
  def index
    @bands = Band.all

    render json: @bands
  end

  def band_instruments
    arr = []
    band_members = Band.find(params[:band_id]).members

    band_members.each do |member|
      instrument = member.instrument
      arr.append(instrument)
    end

    render json: arr
  end

  # GET /bands/1
  def show

    render json: @band
  end

  # POST /bands
  def create
    @band = Band.new(band_params)

    if @band.save
      render json: @band, status: :created, location: @band
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bands/1
  def update
    if @band.update(band_params)
      render json: @band
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bands/1
  def destroy
    @band.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_band
    @band = Band.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def band_params
    params.require(:band).permit(:name, :origin, :labels, :formed_in_year)
  end
end
