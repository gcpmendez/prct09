class Reference
	
 	attr_accessor :title, :date, :authors

 	
	def initialize(authors, title, date)
	    self.authors = []
	    authors.each do |palabras|
	       	@authors.push(palabras)
	    end
	        @title = title
	        @date = date
	end
	
	def get_authors
	    @authors
	end
	
	def get_title
	    @title
	end
	



end