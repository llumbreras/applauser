class DashboardsController < ApplicationController
	def show
		@applause = Applause.new
		@applauses = [ ]
	end
end