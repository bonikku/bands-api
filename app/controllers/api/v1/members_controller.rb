class Api::V1::MembersController < ApplicationController
  def index
    @members = Band.find(params[:band_id]).members

    render json: @members
  end

  def show
    @band = Band.find(params[:band_id])
    @member = @band.members.find(params[:id])

    render json: @member
  end

end