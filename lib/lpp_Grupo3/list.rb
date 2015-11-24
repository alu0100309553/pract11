require "lpp_Grupo3/version"
require "lpp_Grupo3/reference"
class List

    attr_accessor :head, :tail
    	
    def initialize(nodes)
    @Node = Struct.new(:value, :siguiente, :anterior)
    @head = nil
    @tail = nil
    @empty=true
    @first=true
    enqueque(nodes)
    end
    def insertar(node)
        if @empty == true
            @estenodo = @Node.new(node,nil,nil)
            @head=@estenodo
            @tail=@estenodo
            @empty=false
        else
            @estenodo = @Node.new(node,nil,@tail)
            @tail[:siguiente]=@estenodo
            @tail = @estenodo
        end
    end
    def dequeque
        if @head == @tail
            nodo = @head[:value]
            @head = nil
            @tail = nil
            @empty = true
        else
            nodo = @head[:value]
            @head = @head[:siguiente]
            @head[:anterior] = nil
        end
        nodo
    end
    def enqueque(nodo)
        insertar(nodo)
    end
    def enqueque(nodes)
        for i in (0.. nodes.size-1)
            if (nodes[i].size<6)
                ref=Articulo.new(nodes[i][0],nodes[i][1],nodes[i][2],nodes[i][3],nodes[i][4])
            else
                ref=Libro.new(nodes[i][0],nodes[i][1],nodes[i][2],nodes[i][3],nodes[i][4],nodes[i][5],nodes[i][6])
            end
            insertar(ref)
        end
    end
end