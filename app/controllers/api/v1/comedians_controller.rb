class Api::V1::ComediansController < Api::V1::ApplicationController
    before_action :find_comedian, only: [:show, :create]
    def index
        render json: Comedian.all, status: :ok
    end 

    def show
        render json: @comedian, status: :ok
    end

    def create
        render json: Comedian.create!(comedian_params), status: :ok
    end

    private

    def find_comedian
        @comedian = Comedian.find(params[:id])
    end

    def comedian_params
        params.permit(:id, :name, :image_url)
    end
end
