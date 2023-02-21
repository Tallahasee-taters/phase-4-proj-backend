class Api::V1::ShowsController < Api::V1::ApplicationController
    before_action :find_show, only: [:show, :update, :destroy]

    def index
        render json: Show.all, status: 200
    end

    def show
        render json: @show, status: 200
    end

    def create
        
        find_comedian_name = Comedian.find_or_create_by(name: format_check(params[:comedian]))
        find_venue_name = Venue.find_or_create_by(name: format_check(params[:venue]), city: format_check(params[:city]))
        new_show = Show.create!(comedian_id: find_comedian_name.id, venue_id: find_venue_name.id, date: params[:date])
        render json: new_show, status: 201
    end

    def update
        find_comedian_name = Comedian.find_or_create_by(name: format_check(params[:comedian_id]))
        find_venue_name = Venue.find_or_create_by(name: format_check(params[:venue_id]), city: format_check(params[:city]))
        params[:comedian_id] = find_comedian_name.id
        params[:venue_id] = find_venue_name.id
        @show.update!(show_params)
        render json: @show, status: 202
    end

    def destroy
        @show.destroy
        head :no_content
    end

    private

    def find_show
        @show = Show.find(params[:id])
    end

    def show_params
        params.permit(:id, :date, :comedian_id, :venue_id)
    end

    def format_check(string)
        string.split(" ").map(&:capitalize).join(" ")
    end
end
