require "lpp_Grupo3/version"
class Citayanoexiste
    include Comparable
    attr_accessor 
    def initialize(author, date, titulo)
       @author=author
       @datey=date
       @titulo=titulo
    end
    def <=>(other)
       if autor == other.author
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

class Citalibro < Citayanoexiste
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
        for i in (0..author.size-1)
            text << "#{@author[i][2]} ,#{(@author[i][1])[0]} &"
        end
        text << "(#{@date})"
        text << "#{@title}: "
        text << "#{@subtitle}"
        text << "(#{@edicion}) "
        text << "(#{@volumen})."
        text << "#{@editor}."
        text
    end
        
end

class Citacapitulo < Citayanoexiste
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
        for i in (0..author.size-1)
            text << "#{@author[i][2]} ,#{(@author[i][1])[0]} &"
        end
        text << "(#{@date})"
        text << "#{self.titulo}. "
        text << "#{@title}. "
        text << "(#{@edicion}) "
        text << "(#{@volumen})."
        text << "#{@editor}."
        text
    end
        
    
end

class Citaarticulo < Citayanoexiste
    attr_accessor
    def initialize(author, date, articulo, medio, pagina)
        super(author,date, articulo)
        @medio=medio
        @paginas=pagina
    end
    def to_s
        text=""
        for i in (0..author.size-1)
            text << "#{@author[i][2]} ,#{(@author[i][1])[0]} &"
        end
        text << "(#{@date})"
        text << "#{@titulo}. "
        text << "#{@title}. "
        text << "(#{@edicion}) "
        text << "(#{@volumen})."
        text << "#{@editor}."
        text
    end
end

class Citaedoc < Citayanoexiste
    attr_accessor
    def initialize(author, date, titulo, edicion, tipomedio, editorial, enlace,acceso)
        super(autor, date, titulo)
        @edicion=edicion
        @tipomedio=tipomedio
        @editor=editorial
        @enlace=enlace
        @acceso=acceso
    end
    def to_s
        text=""
        for i in (0..author.size-1)
            text << "#{@author[i][2]} ,#{(@author[i][1])[0]} &"
        end
        text << "(#{@date})"
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
        
    