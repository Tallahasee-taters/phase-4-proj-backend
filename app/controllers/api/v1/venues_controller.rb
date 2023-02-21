class Api::V1::VenuesController < Api::V1::ApplicationController
    def index
        render json: Venue.all, status: :ok
    end

    def show
        venue = Venue.find(params[:id])
        render json: venue, status: :ok
    end

    def view
        venue = Venue.find(params[:id])
        shows = venue.shows
        render json: shows, status: :ok
    end
end
