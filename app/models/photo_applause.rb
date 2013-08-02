class PhotoApplause < ActiveRecord::Base

	has_attached_file :image,
		styles: {	thumb: "80x80>"	}

		def index
			image_file_name
		end
end
