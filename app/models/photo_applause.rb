class PhotoApplause < ActiveRecord::Base

	has_attached_file :image, styles: {
		applause: "200x200>"
	}
end
