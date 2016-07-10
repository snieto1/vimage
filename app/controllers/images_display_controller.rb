class ImagesDisplayController < ApplicationController
  def display
    @hash = params[:q].split(" ").join
    url = "https://api.social-searcher.com/v2/search?q=#{@hash}&network=instagram&key=97035760e6ee719b7fd7545a87d9e9d1"
    @response = HTTParty.get(url)
    @array = @response["posts"]
    @render = []

    @array.each do |array_element|
    @render << array_element["image"]
    end

    url = "https://api.social-searcher.com/v2/search?q=#{@hash}&network=youtube&key=97035760e6ee719b7fd7545a87d9e9d1"
    @response2 = HTTParty.get(url)
    @array2 = @response2["posts"]
    @render2 = []

    @array2.each do |array_element|
    video = array_element["url"].split("=")
    video = video[1]
    @render2 << video
    end
  end

end
