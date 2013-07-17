class DashboardsController < ApplicationController
	def show
		@text_applause = TextApplause.new
		@applauses = current_user.applauses
	end
end