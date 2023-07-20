class MerchantsController < ApplicationController
  def index 
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants")
    json_response = JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry
    @merchants = json_response[:data]
    # require 'pry'; binding.pry
  end

  def show
    merchant_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}")
    merch_json = JSON.parse(merchant_response.body, symbolize_names: true)
    @merchant = merch_json[:data]
    # require 'pry'; binding.pry

    item_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}/items")
    item_json = JSON.parse(item_response.body, symbolize_names: true)
    @items = item_json[:data]
  end
end