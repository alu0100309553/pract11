require "lpp_Grupo3/version"
require "lpp_Grupo3/reference"
class Cita
    include Comparable
    attr_accessor :author, :datey, :titulo, :sufijo
    
    def initialize
        self.author=[]
        self.datey=[]
        self.titulo=[]
        self.sufijo=0 
    end
    
    def autor (datos = {})
        self.author.push([datos[:apellido], datos[:nombre]])
    end
    
    def fecha (year)
       self.datey = year 
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
    attr_accessor :title, :subtitle, :editor, :edicion, :volumen
    
    def libro (datos = {})
       self.titulo = datos[:titulo]
       self.title = datos[:titulo]
       self.subtitle = datos[:subtitulo]
       self.editor = datos[:editor]
       self.edicion = datos[:edicion]
       self.volumen = datos[:volumen]
    end
    
    def initialize(&block)
        super    
        self.title=[]
        self.subtitle=[]
        self.editor=[]
        self.edicion=[]
        self.volumen=[]    
        instance_eval &block if block_given?
    end
    
    def to_s
        text=""
        for i in (0..author.size-2)
            text << " #{self.author[i][0]}, #{(self.author[i][1])[0]}. &"
        end
        text << " #{self.author[author.size-1][0]}, #{(self.author[self.author.size-1][1])[0]}."
        text << " (#{self.datey}"
        if (self.sufijo>0)
           text << (self.sufijo+96).chr 
        end
        text << "). #{self.title}: "
        text << " #{self.subtitle}."
        text << " (#{self.edicion}) "
        text << " (#{self.volumen})."
        text << " #{self.editor}."
        text
    end
        
end

class CitaCapitulo  < Cita
    attr_accessor :title, :subtitle, :editor, :edicion, :volumen
    
    def capitulo (datos = {})
       self.title = datos[:titulo]
       self.titulo = datos[:capitulo]
       self.subtitle = datos[:subtitulo]
       self.editor = datos[:editor]
       self.edicion = datos[:edicion]
       self.volumen = datos[:volumen]
    end
    
    def initialize(&block)
        super    
        self.title=[]
        self.subtitle=[]
        self.editor=[]
        self.edicion=[]
        self.volumen=[]    
        instance_eval &block if block_given?
    end
    
    def to_s
        text=""
        for i in (0..author.size-2)
            text << " #{self.author[i][0]}, #{(self.author[i][1])[0]}. &"
        end
        text << " #{self.author[author.size-1][0]}, #{(self.author[self.author.size-1][1])[0]}."
        text << " (#{self.datey}"
        if (self.sufijo>0)
           text << (self.sufijo+96).chr 
        end
        text << "). #{self.titulo}. "
        text << "#{self.title}. "
        text << "(#{self.edicion}) "
        text << "(#{self.volumen})."
        text << "#{self.editor}."
        text
    end
        
    
    
end

class CitaArticulo < Cita
    attr_accessor :medio, :paginas
    
    def articulo(datos = {})
        self.titulo=datos[:titulo]
        self.medio=datos[:medio]
        self.paginas=datos[:pagina]
    end
    
    def initialize(&block)
        super    
        self.medio=[]
        self.paginas=[]
        instance_eval &block if block_given?
    end
    
    def to_s
        text=""
        for i in (0..author.size-2)
            text << " #{self.author[i][0]}, #{(self.author[i][1])[0]}. &"
        end
        text << " #{self.author[self.author.size-1][0]}, #{(self.author[author.size-1][1])[0]}."
        text << " (#{self.datey}"
        if (self.sufijo>0)
           text << (self.sufijo+96).chr 
        end
        text << "). #{self.titulo}."
        text << " #{self.medio}."
        text << " (pag.:#{self.paginas})."
        text
    end
end

class CitaEdoc < Cita
    attr_accessor :edicion, :tipomedio, :editor, :enlace, :acceso
    
    def edoc(datos = {})
        self.titulo=datos[:titulo]
        self.edicion=datos[:edicion]
        self.tipomedio=datos[:medio]
        self.editor=datos[:editor]
        self.enlace=datos[:enlace]
        self.acceso=datos[:acceso]
    end
    
    def initialize(&block)
        super    
        self.edicion=[]
        self.tipomedio=[]
        self.editor=[]
        self.enlace=[]
        self.acceso=[]    
        instance_eval &block if block_given?
    end
    
    def to_s
        text=""
        for i in (0..self.author.size-2)
            text << " #{self.author[i][0]}, #{(self.author[i][1])[0]}. &"
        end
        text << " #{self.author[self.author.size-1][0]}, #{(self.author[self.author.size-1][1])[0]}."
        text << " (#{self.datey}"
        if (self.sufijo>0)
           text << (self.sufijo+96).chr 
        end
        text << "). #{self.titulo} "
        text << "(#{self.edicion}). "
        text << "[#{self.tipomedio}]."
        text << " #{self.editor}. "
        text << "#{self.enlace}. "
        text << "[#{self.acceso}]."
        text
    end
end
        
    