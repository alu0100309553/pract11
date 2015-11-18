require "lpp_Grupo3/version"
require "lpp_Grupo3/reference"
class List

    attr_accessor :head
    	
    def initialize(nodes)
    @Node = Struct.new(:value, :siguiente, :anterior)
    @head = nil
    @tail = nil
    @empty=true
    @first=true
        for i in (0.. nodes.size-1)
            ref=G03ref.new(nodes[i][0],nodes[i][1],nodes[i][2],nodes[i][3],nodes[i][4],nodes[i][5],nodes[i][6],)
            insertar(ref)
        end
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
    def get_value
        return @head[:value]
    end
    def get_siguiente
        return @head[:siguiente]
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
            ref=G03ref.new(nodes[i][0],nodes[i][1],nodes[i][2],nodes[i][3],nodes[i][4],nodes[i][5],nodes[i][6],)
            insertar(ref)
        end
    end
    
    
end