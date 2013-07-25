class Timeline
	extend ActiveModel::Naming

	def initialize user
		@user = user
	end

	def applauses
		Applause.where(user_id: applause_user_ids)
	end

	private

	def applause_user_ids
		[@user.id] + @user.followed_user_ids
	end

end