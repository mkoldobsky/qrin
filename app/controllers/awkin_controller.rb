class AwkinController < ApplicationController

def index
	@last = Awkin.last
	@total = @last.total + 1
	@awkin = Awkin.create
	@awkin.date = Date.today
	@awkin.total = @total
	@lat_lng = cookies[:lat_lng]
	if (!@lat_lng.nil?)
		@lat_lng.split("|")
	@awkin.lat = @lat_lng[0]
	@awkin.long = @lat_long[1]
end
	@awkin.save


	respond_to do |format|
      format.html 
      format.json { render json: @total.to_s }
    end
end

end
