class ApiCallsController < ApplicationController

    def api_call
        @data = JSON.parse(RestClient.get("https://www.dnd5eapi.co#{api_params[:url]}"))
        if @data
            render json: @data, status: :ok
        else
            render json: @data.errors, status: :unprocessable_entity
        end
    end

    private

    def api_params
        params.require(:api_call).permit(:url)
    end

end
