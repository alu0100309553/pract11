require "lpp_Grupo3/version"
require "lpp_Grupo3/cita"
require "lpp_Grupo3/list"
class Bibliografia
    attr_accessor :lista
    def initialize(referencias)
        @lista=List.new(referencias.sort)
        @suf=0
        self.sufijos
    end
    def insertar(nodos)
        @lista.enqueque(nodos)
        @lista=List.new(@lista.sort)
        @suf=0
        self.sufijos
    end
    def to_s
       (@lista.sort.map{|referencias|referencias.to_s}).join("\n")
    end
    
    def sufijos
       listaord = @lista.sort
        for i in (0..listaord.size-2)
            if (listaord[i].author==listaord[i+1].author&&listaord[i].datey==listaord[i+1].datey)
               listaord[i].sufijo=@suf+1
               listaord[i+1].sufijo=@suf+2
               @suf=@suf+1
            else
                @suf=0
            end
        end
    end
end