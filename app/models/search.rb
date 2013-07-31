class Search 

	attr_reader :term

	def initialize options = {}
		@term = options.fetch(:term, "")
	end

	def applauses
		Applause.search(term)
	end

end