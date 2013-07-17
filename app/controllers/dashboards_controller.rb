class DashboardsController < ApplicationController
	def show
		@text_applause = TextApplause.new
		@photo_applause = PhotoApplause.new
		@applauses = current_user.applauses
	end
end