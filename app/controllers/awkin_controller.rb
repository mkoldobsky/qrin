class AwkinController < ApplicationController

def index
	begin
		@awkin = Awkin.create
		@awkin.date = Date.today
		@path = request.path
		@generation = Generation.where("hashname = ?", @path).first
		@awkin.generation = @generation
		@awkin.request = request.raw_post()
		@awkin.save
		@total = @awkin.id
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
		@awkin = Awkin.find(params[:total])
		@lat = params[:lat]
		@long = params[:long]
		@awkin.lat = @lat.to_s
		@awkin.long = @long.to_s
		@awkin.save
		render :nothing => true
	rescue Exception => e
		flash[:notice] = e.message
	end
end

end
