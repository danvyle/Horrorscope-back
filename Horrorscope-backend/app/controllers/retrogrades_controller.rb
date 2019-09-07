class RetrogradesController < ApplicationController

  def index
    retrogrades = Retrograde.all
    render json: retrogrades
  end

  def show
    retrograde = Retrograde.find(params[:name])
    render json: retrograde
  end

  def create
    retrograde = Retrograde.new(params.require(:retrograde).permit(:name, :explanation, :sign_id))
    if retrograde.save
      render json: retrograde
    else
      render :json => {
        :errors => retrograde.errors.full_messages
      }
    end

  end

end
