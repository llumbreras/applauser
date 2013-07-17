class DashboardsController < ApplicationController
	def show
		@applause = Applause.new
		@applauses = current_user.applauses
	end
end