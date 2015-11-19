require 'spec_helper'

describe LppGrupo3 do
    before :each do
        @ref1=["Programming Ruby 1.9 &2.0: The Pragmatic Programmers Guide","Pragmatic Bookshelf", 4,"07/07/2013",["978-1937785499","1937785491"], ["Dave Thomas","Andy Hunt","Chad Fowler"],"The Facets of Ruby"]
        @ref2=["Pro Git 2009th Edition","Apress", 2009,"27/08/2009",["978-1430218333","1430218339"], ["Scott Chacon"],"Pro"]
        @ref3=["The Ruby Programming Language","O’Reilly Media",1,"04/02/2008",["978-0596516178","0596516177"],["David Flanagan","Yukihiro Matsumoto"]]
        @ref4=["The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","Pragmatic Bookshelf", 1,"25/12/2010",["978-1934356371","1934356379"], ["David Chelimsky","Dave Astels","Bryan Helmkamp","Dan North","Zach Dennis","Aslak Hellesoy"],"The Facets of Ruby"]
        @ref5=["Git Pocket Guide","O’Reilly Media", 1,"02/08/2013",["978-1449325862","1449325866"], ["Richard E. Silverman"]]
        @ref=Libro.new("Programming Ruby 1.9 &2.0: The Pragmatic Programmers Guide","Pragmatic Bookshelf", 4,"07/07/2013",["978-1937785499","1937785491"], ["Dave Thomas","Andy Hunt","Chad Fowler"],"The Facets of Ruby")
        @list1 = List.new([@ref1,@ref2,@ref3,@ref4,@ref5])
    end
    it 'Debe existir un nodo de la lista con sus datos y su siguiente' do
        expect(@list1.head[:value]).not_to be nil
        expect(@list1.head[:siguiente]).not_to be nil
    end
    it 'Se extrae el primer elemento de la lista' do
        #expect(@list1).to respond_to(:poop) 
        expect(@list1.dequeque.to_s).to eq(@ref.to_s)
    end 
    it 'Se puede insertar un nodo en la lista' do
        expect(@list1).to respond_to(:enqueque)
        expect {@list1.enqueque([@ref1])}.to_not raise_error
    end 
    it 'Se puede insertar varios nodos en la lista' do
        expect(@list1).to respond_to(:enqueque)
        expect{@list1.enqueque([@ref1,@ref2,@ref3])}.to_not raise_error
    end 
    it 'Debe existir una lista con su cabeza' do
        expect(@list1).not_to be nil
        expect(@list1.head).not_to be nil
    end 

end 
describe '#DLlist' do
    before :each do
        @ref1=["Programming Ruby 1.9 &2.0: The Pragmatic Programmers Guide","Pragmatic Bookshelf", 4,"07/07/2013",["978-1937785499","1937785491"], ["Dave Thomas","Andy Hunt","Chad Fowler"],"The Facets of Ruby"]
        @ref2=["Pro Git 2009th Edition","Apress", 2009,"27/08/2009",["978-1430218333","1430218339"], ["Scott Chacon"],"Pro"]
        @ref3=["The Ruby Programming Language","O’Reilly Media",1,"04/02/2008",["978-0596516178","0596516177"],["David Flanagan","Yukihiro Matsumoto"]]
        @ref4=["The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","Pragmatic Bookshelf", 1,"25/12/2010",["978-1934356371","1934356379"], ["David Chelimsky","Dave Astels","Bryan Helmkamp","Dan North","Zach Dennis","Aslak Hellesoy"],"The Facets of Ruby"]
        @ref5=["Git Pocket Guide","O’Reilly Media", 1,"02/08/2013",["978-1449325862","1449325866"], ["Richard E. Silverman"]]
        @ref6=["Los Fundamentos de Ruby","Internet","www.lpp.org","02/08/2013", ["Yo mismo"]]
        @ref=Libro.new("Programming Ruby 1.9 &2.0: The Pragmatic Programmers Guide","Pragmatic Bookshelf", 4,"07/07/2013",["978-1937785499","1937785491"], ["Dave Thomas","Andy Hunt","Chad Fowler"],"The Facets of Ruby")
        @list2 = List.new([@ref1,@ref2,@ref3,@ref4,@ref5,@ref6])
    end
    it 'Los nodos de la lista deben tener un siguiente y un anterior' do
        expect{@list2.head[:value]}.to_not raise_error
        expect{@list2.head[:siguiente]}.to_not raise_error
        expect{@list2.head[:anterior]}.to_not raise_error
    end
    it 'Existe una clase para libros y publicaciones periódicas' do
        @list2.head[:value].should be_an_instance_of Libro
        @list2.tail[:value].should be_an_instance_of Articulo
    end
    
end

