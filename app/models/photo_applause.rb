class PhotoApplause < ActiveRecord::Base

	has_attached_file :image,
	#url: "/system/photo_applauses/images/000/000/:id/original/:basename.:extension",
	#path: "system/photo_applauses/images/000/000/:id/original/:basename.:extension",
	styles: {	applause: "200x200>"	}
end
