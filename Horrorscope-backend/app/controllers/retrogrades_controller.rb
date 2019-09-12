class RetrogradesController < ApplicationController

  def index
    retrogrades = Retrograde.all
    render json: retrogrades
  end

  def show
    retrograde = Retrograde.find(params[:name])
    render json: retrograde
  end

  def fetch_books
    url = "https://www.googleapis.com/books/v1/volumes?q=self+help&maxResults=8"
    resp = RestClient.get(url)
    book_info = JSON.parse(resp)
    render json: book_info
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
