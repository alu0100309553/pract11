require "lpp_Grupo3/version"
class G03ref
    attr_accessor :title,:serie,:editorial,:edicion,:date,:isbn,:authors
	def initialize(authors,title,date)
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
	def get_date
	    @date
	end
end
	       

class Libro < G03ref
	public
    # CONSTRUCTOR
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
class Articulo < G03ref
	def initialize(title,medio,nmedio,date,authors)
		super(authors,title,date)
		
        @medio = medio
        @nmedio = nmedio
        
        return self
	end
	def get_medio
	    @medio
	end
	
	def to_s
		text=""
	    for i in (0..@authors.size-2)
	    	 text << "#{authors[i]} , " 
	    end
	    text << "#{authors[authors.size-1]}."
	    text << "\n#{@title}."
	    if @nmedio.size==1
	    	 text << "\n(#{@serie[0]})."
	    end
	     text << "\n#{@editorial}; #{@edicion} Edicion (#{@date})."
	    for i in (0..@isbn.size-1)
	    	 text << "\nISBN #{@isbn[i].length}: #{@isbn[i]}."
	    end
	    text
	end

end