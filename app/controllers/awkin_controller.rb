class AwkinController < ApplicationController

def index
	@last = Awkin.last
	@total = @last.total + 1
	 respond_to do |format|
      format.html 
      format.json { render json: @total.to_s }
    end
end

end
