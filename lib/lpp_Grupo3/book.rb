
class Book < Reference
    
    attr_accessor :serie,:editorial,:edicion,:isbn
     
	def initialize(title,editorial,edicion,date,isbn,authors,*serie)
		super(authors,title,date)
		
        @serie = serie
        @editorial = editorial
        @edicion = edicion

        self.isbn = []
        isbn.each do |numeros|
            @isbn.push(numeros)
        end
        return self
	end
	
	def get_serie
	    @serie
	end
	
	def get_editorial
	    @editorial
	end
	
	def get_edition
	    @edicion
	end
	
	def get_isbn
	    @isbn
	end
	
	def to_s
	   	text=""
		
	    for i in (0..@authors.size-2)
	    	 text << "#{authors[i]} , " 
	    end
	    text << "#{authors[authors.size-1]}."
	    text << "\n#{@title}."
	    if @serie.size==1
	    	 text << "\n(#{@serie[0]})."
	    end
	     text << "\n#{@editorial}; #{@edicion} Edicion (#{@date})."
	    for i in (0..@isbn.size-1)
	    	 text << "\nISBN #{@isbn[i].length}: #{@isbn[i]}."
	    end
	    text
	end
	
end