class Api::V1::MerchantsController < ApplicationController
  def index 
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants")
    json_response = JSON.parse(response.body, symbolize_names: true)
    @merchants = json_response[:data]
    # require 'pry'; binding.pry
  end
end