class PhotoApplausesController < ApplicationController

	def create
		content = build_content
		applause = current_user.applauses.build(content: content)
		if applause.save
			redirect_to dashboard_path
		else
			flash.alert = "Applause failed!"
			redirect_to dashboard_path
		end

	end

	private

	def build_content
		PhotoApplause.new(photo_applause_parameter)
	end

	def photo_applause_parameter
		params.require(:photo_applause).permit(:image)
	end


end