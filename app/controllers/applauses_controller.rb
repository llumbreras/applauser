class ApplausesController < ApplicationController
	def show
		@applause = Applause.find(params[:id])
	end

	def create
		applause = current_user.applauses.build(applause_parameter)
		applause.save
		redirect_to dashboard_path
	end

	private

	def applause_parameter
		params.require(:applause).permit(:body)
	end
end