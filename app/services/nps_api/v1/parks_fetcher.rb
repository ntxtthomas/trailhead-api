module NpsApi
  module V1
    class ParksFetcher
      include HTTParty
      base_uri "https://developer.nps.gov/api/v1"

      def initialize(api_key = ENV["NPS_KEY"])
        @api_key = api_key
      end

      def fetch_parks
        response = self.class.get(
          "/parks",
          query: { api_key: @api_key, limit: 500 })
        if response.success?
          parse_and_save_parks(response.parsed_response["data"])
        else
          Rails.logger.error("Failed to fetch parks: #{response.code} - #{response.message}")
          []
        end
      end

      def parse_and_save_parks(parks_data)
        parks_data.map do |park_data|
          Park.find_or_initialize_by(nps_id: park_data["id"]).tap do |park|
            park.name = park_data["fullName"]
            park.description = park_data["description"]
            park.states = park_data["states"]
            park.url = park_data["url"]
            park.data_source = :nps
            park.save!
          end
        end
      end
    end
  end
end
