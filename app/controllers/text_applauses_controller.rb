class TextApplausesController < ApplicationController

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
		TextApplause.new(text_applause_parameter)
	end

	def text_applause_parameter
		params.require(:text_applause).permit(:body)
	end

end
