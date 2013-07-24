class Timeline
	extend ActiveModel::Naming

	def initialize user
		@user = user
	end

	def applauses
		@user.applauses
	end

end