class AwkinController < ApplicationController

def index
	begin
		@last = Awkin.last
		@total = @last.total + 1
		@awkin = Awkin.create
		@awkin.date = Date.today
		@awkin.total = @total
		@path = request.path
		#@generation = Generation.where("hash_name = ?", @path)
		#@awkin.generation = @generation
		@awkin.save
		respond_to do |format|
	      format.html 
	      format.json { render json: @total.to_s }
	    end
	rescue Exception => e
		flash[:notice] = e.message
	end

end

def setGeoLocation
	begin
		@awkin = Awkin.where("total = ?", params[:total])
		@lat = params[:lat]
		@long = params[:long]
		@awkin.lat = @lat.to_s
		@awkin.long = @long.to_s
		@awkin.save
	rescue Exception => e
		flash[:notice] = e.message
	end
end

end
