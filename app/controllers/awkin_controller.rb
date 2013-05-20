class AwkinController < ApplicationController

def index
	@last = Awkin.last
	@total = @last.total + 1
	@awkin = Awkin.create
	@awkin.date = Date.today
	@awkin.total = @total
	@awkin.generation = request.path
	
	@awkin.save


	respond_to do |format|
      format.html 
      format.json { render json: @total.to_s }
    end
end

def setGeoLocation
	@awkin = Awkin.last
	@lat = params[:lat]
	@long = params[:long]
	@awkin.lat = @lat.to_s
	@awkin.long = @long.to_s
	@awkin.save
end

end
