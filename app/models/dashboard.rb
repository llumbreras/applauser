class Dashboard
	def initialize user
		@user = user
	end

	def new_text_applause
		TextApplause.new
	end

	def new_photo_applause
		PhotoApplause.new
	end

	def timeline
		Timeline.new(@user)
	end

end