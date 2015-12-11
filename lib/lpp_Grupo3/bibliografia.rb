require "lpp_Grupo3/version"
require "lpp_Grupo3/cita"
require "lpp_Grupo3/list"
class Bibliografia
    def initialize(referencias)
        @lista=List.new(referencias)
        @suf=0
        self.sufijos
    end
    def insertar
        
    end
    def to_s
       @lista.sort.map{|referencias|referencias.to_s}
    end
    
    def sufijos
       listaord = @lista.sort
        for i in (0..listaord.size-2)
            if (listaord[i].author==listaord[i+1].author&&listaord[i].datey==listaord[i+1].datey)
               listaord[i].sufijo=@suf+1
               listaord[i+1].sufijo=@suf+2
               @suf=@suf+1
            end
        end
    end
end