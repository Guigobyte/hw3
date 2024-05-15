class EntriesController < ApplicationController
  
  def index
    redirect_to "/places"
  end
  
  def show
    redirect_to "/places"
  end

  def new
    @place = Place.find_by({"id" => params["place_id"]})
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
    @entry["place_id"] = params["place_id"]

    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end
end
