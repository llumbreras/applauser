class HashtagsController < ApplicationController

	def show
		@hashtag = params[:id]
		@applauses = Applause.search("##{@hashtag}")
	end


end