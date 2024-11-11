require "open-uri"

class FlatsController < ApplicationController
  before_action :get_flats

  def index
  end

  def show
    flat_id = params["id"].to_i

    @flat = @flats.find { |flat| flat["id"] == flat_id }
  end

  def get_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # flats is now an array of Ruby hashes
    @flats = JSON.parse(URI.parse(url).read)
  end
end
