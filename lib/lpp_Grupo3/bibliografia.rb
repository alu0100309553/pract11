require "lpp_Grupo3/version"
require "lpp_Grupo3/cita"
require "lpp_Grupo3/list"
class Bibliografia
    def initialize(referencias)
        @lista=List.new(referencias)
    end
    def to_s
       @lista.sort.map{|referencias|referencias.to_s}
    end
    
end