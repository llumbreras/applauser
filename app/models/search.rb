class Search 

	extend ActiveModel::Naming
	
	attr_reader :term

	def initialize options = {}
		@term = options.fetch(:term, "")
	end

	def applauses
		Applause.text_applauses.where(content_id: text_applauses)
	end

	private


	def text_applauses
		TextApplause.where("body LIKE ?", search_term)
	end

	def search_term
		"%#{term}%"
	end

end