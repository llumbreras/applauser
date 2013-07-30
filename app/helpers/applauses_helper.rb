require 'digest/md5'

module ApplausesHelper
	def gravatar user, size = 24
		digest = Digest::MD5.hexdigest(user.email)
		image_tag("http://gravatar.com/avatar/#{digest}?s=#{size}")
	end

	def applauserize text
		link_hashtags(strip_tags(text)).html_safe
	end

	private

	def link_hashtags text
		text.gsub(/#(\w+)/) { |match| link_to(match, hashtag_path($1))}
	end

end