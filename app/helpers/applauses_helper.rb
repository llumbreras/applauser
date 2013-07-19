require 'digest/md5'

module ApplausesHelper
	def gravatar user, size = 24
		digest = Digest::MD5.hexdigest(user.email)
		image_tag("http://gravatar.com/avatar/#{digest}?s=#{size}")
	end
end