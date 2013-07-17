class ApplausesController < ApplicationController
	def show
		@applause = Applause.find(params[:id])
	end

end