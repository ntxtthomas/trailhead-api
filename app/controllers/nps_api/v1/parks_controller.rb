module NpsApi
  module V1
    class ParksController < ApplicationController
      def index
        @parks = Park.all
        render json: @parks
      end
      
      def sync
        NpsApi::V1::ParksFetcher.new.fetch_parks
        render json: { message: "Parks synced successfully", count: Park.count }
      end
    end
  end
end 