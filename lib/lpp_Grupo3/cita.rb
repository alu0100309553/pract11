require "lpp_Grupo3/version"
require "lpp_Grupo3/reference"
class Cita
    include Comparable
    attr_accessor :author, :datey, :titulo, :sufijo
    def initialize(author, date, titulo)
       @author=author
       @datey=date
       @titulo=titulo
       @sufijo=0
    end
    def <=>(other)
       if author == other.author
        if datey == other.datey
            titulo<=>other.titulo
        else
            datey <=> other.datey
        end
       else
           author<=>other.author
       end
    end
    
end

class CitaLibro < Cita
    attr_accessor
    def initialize(author, date, titulo, subtitulo, editor, edicion, volumen)
        super(author, date, titulo)
        @title=titulo
        @subtitle=subtitulo
        @editor=editor
        @edicion=edicion
        @volumen=volumen
    end
    def to_s
        text=""
        for i in (0..author.size-2)
            text << " #{self.author[i][0]}, #{(self.author[i][1])[0]}. &"
        end
        text << " #{self.author[author.size-1][0]}, #{(self.author[author.size-2][1])[0]}."
        text << " (#{self.datey}"
        if (self.sufijo>0)
           text << (sufijo+96).chr 
        end
        text << "). #{@title}: "
        text << " #{@subtitle}."
        text << " (#{@edicion}) "
        text << " (#{@volumen})."
        text << " #{@editor}."
        text
    end
        
end

class CitaCapitulo  < Cita
    attr_accessor
    def initialize(author, date, titulocap, titulo, subtitulo, editor, edicion, volumen)
        super(author, date, titulocap)
        @title=titulo
        @subtitle=subtitulo
        @editor=editor
        @edicion=edicion
        @volumen=volumen
    end
    def to_s
        text=""
        for i in (0..author.size-2)
            text << " #{self.author[i][0]}, #{(self.author[i][1])[0]}. &"
        end
        text << " #{self.author[author.size-1][0]}, #{(self.author[author.size-2][1])[0]}."
        text << " (#{self.datey}"
        if (self.sufijo>0)
           text << (sufijo+96).chr 
        end
        text << "). #{self.titulo}. "
        text << "#{@title}. "
        text << "(#{@edicion}) "
        text << "(#{@volumen})."
        text << "#{@editor}."
        text
    end
        
    
    
end

class CitaArticulo < Cita
    attr_accessor
    def initialize(author, date, articulo, medio, pagina)
        super(author,date, articulo)
        @medio=medio
        @paginas=pagina
    end
    def to_s
        text=""
        for i in (0..author.size-2)
            text << " #{self.author[i][0]}, #{(self.author[i][1])[0]}. &"
        end
        text << " #{self.author[author.size-1][0]}, #{(self.author[author.size-2][1])[0]}."
        text << " (#{self.datey}"
        if (self.sufijo>0)
           text << (sufijo+96).chr 
        end
        text << "). #{self.titulo}."
        text << " #{@medio}."
        text << " (pag.:#{@paginas})."
        text
    end
end

class CitaEdoc < Cita
    attr_accessor
    def initialize(author, date, titulo, edicion, tipomedio, editorial, enlace,acceso)
        super(author, date, titulo)
        @edicion=edicion
        @tipomedio=tipomedio
        @editor=editorial
        @enlace=enlace
        @acceso=acceso
    end
    def to_s
        text=""
        for i in (0..author.size-2)
            text << " #{self.author[i][0]}, #{(self.author[i][1])[0]}. &"
        end
        text << " #{self.author[author.size-1][0]}, #{(self.author[author.size-2][1])[0]}."
        text << " (#{self.datey}"
        if (self.sufijo>0)
           text << (sufijo+96).chr 
        end
        text << "#{@titulo}. "
        text << "#{@title}. "
        text << "(#{@edicion}) "
        text << "[#{@tipomedio}]."
        text << "#{@editor}."
        text << "#{@enlace}."
        text << "[#{@acceso}]."
        text
    end
end
        
    