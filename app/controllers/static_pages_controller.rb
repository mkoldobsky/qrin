class StaticPagesController < ApplicationController
	require 'rqrcode'
	def home
	  respond_to do |format|
      format.html # index.html.erb
      format.svg { render options }
    end
	end

  def help
  end

  private
  def options
    {:qrcode => "http://cubedr.com", :size => 4}
  end
end
