require 'spec_helper'

describe LppGrupo3 do
    before :each do
        @ref1=Libro.new("Programming Ruby 1.9 &2.0: The Pragmatic Programmers Guide","Pragmatic Bookshelf", 4,"07/07/2013",["978-1937785499","1937785491"], ["Dave Thomas","Andy Hunt","Chad Fowler"],"The Facets of Ruby")
        @ref2=Libro.new("Pro Git 2009th Edition","Apress", 2009,"27/08/2009",["978-1430218333","1430218339"], ["Scott Chacon"],"Pro")
        @ref3=Libro.new("The Ruby Programming Language","O’Reilly Media",1,"04/02/2008",["978-0596516178","0596516177"],["David Flanagan","Yukihiro Matsumoto"])
        @ref4=Libro.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","Pragmatic Bookshelf", 1,"25/12/2010",["978-1934356371","1934356379"], ["David Chelimsky","Dave Astels","Bryan Helmkamp","Dan North","Zach Dennis","Aslak Hellesoy"],"The Facets of Ruby")
        @ref5=Libro.new("Git Pocket Guide","O’Reilly Media", 1,"02/08/2013",["978-1449325862","1449325866"], ["Richard E. Silverman"])
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
        @ref1=Libro.new("Programming Ruby 1.9 &2.0: The Pragmatic Programmers Guide","Pragmatic Bookshelf", 4,"07/07/2013",["978-1937785499","1937785491"], ["Dave Thomas","Andy Hunt","Chad Fowler"],"The Facets of Ruby")
        @ref2=Libro.new("Pro Git 2009th Edition","Apress", 2009,"27/08/2009",["978-1430218333","1430218339"], ["Scott Chacon"],"Pro")
        @ref3=Libro.new("The Ruby Programming Language","O’Reilly Media",1,"04/02/2008",["978-0596516178","0596516177"],["David Flanagan","Yukihiro Matsumoto"])
        @ref4=Libro.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","Pragmatic Bookshelf", 1,"25/12/2010",["978-1934356371","1934356379"], ["David Chelimsky","Dave Astels","Bryan Helmkamp","Dan North","Zach Dennis","Aslak Hellesoy"],"The Facets of Ruby")
        @ref5=Libro.new("Git Pocket Guide","O’Reilly Media", 1,"02/08/2013",["978-1449325862","1449325866"], ["Richard E. Silverman"])
        @ref6=Articulo.new("Los Fundamentos de Ruby","Internet","www.lpp.org","02/08/2013", ["Yo mismo"])
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
        @list2.tail[:value].should be_a G03ref
        
    end
    it 'Existe un método para acceder al medio de publicacion en la clase revista'do
        expect(@list2.tail[:value]).to respond_to(:get_medio)
    end
    it 'Existe un método para acceder al nombre medio de publicacion en la clase revista'do
        expect(@list2.tail[:value]).to respond_to(:get_nmedio)
    end
    it 'Existe un método para obtener un string con los datos de la refencia en la clase artículo'do
        expect(@list2.tail[:value]).to respond_to(:to_s)
    end
    
end

describe "# Comparaciones entre referencias por orden alfabético en el título" do
    before :each do
        @ref1=Libro.new("Git Pocket Guide","O’Reilly Media", 1,"02/08/2013",["978-1449325862","1449325866"], ["Richard E. Silverman"])
        @ref2=Articulo.new("Los Fundamentos de Ruby","Internet","www.lpp.org","02/08/2013", ["Yo mismo"])
    end
    it "ref1 es anterior (en orden alfabético) que ref2" do
      expect(@ref1 < @ref2).to eq(true)
    end
    it "ref1 es posterior (en orden alfabético) que ref2" do
      expect(@ref1 > @ref2).to eq(false)
    end
    it "ref1 es anterior o igual (en orden alfabético) que ref2" do
      expect(@ref1 <= @ref2).to eq(true)
    end
    it "ref1 es posterior o igual (en orden alfabético) que ref2" do
      expect(@ref1 >= @ref2).to eq(false)
    end
    it "ref1 es igual (en orden alfabético) que ref2" do
      expect(@ref1 == @ref2).to eq(false)
    end
  end
  
  
describe "# Haciendo List enumerable" do
    before :each do
        @ref1=Libro.new("Programming Ruby 1.9 &2.0: The Pragmatic Programmers Guide","Pragmatic Bookshelf", 4,"07/07/2013",["978-1937785499","1937785491"], ["Dave Thomas","Andy Hunt","Chad Fowler"],"The Facets of Ruby")
        @ref2=Libro.new("Pro Git 2009th Edition","Apress", 2009,"27/08/2009",["978-1430218333","1430218339"], ["Scott Chacon"],"Pro")
        @ref3=Libro.new("The Ruby Programming Language","O’Reilly Media",1,"04/02/2008",["978-0596516178","0596516177"],["David Flanagan","Yukihiro Matsumoto"])
        @ref4=Libro.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","Pragmatic Bookshelf", 1,"25/12/2010",["978-1934356371","1934356379"], ["David Chelimsky","Dave Astels","Bryan Helmkamp","Dan North","Zach Dennis","Aslak Hellesoy"],"The Facets of Ruby")
        @ref5=Libro.new("Git Pocket Guide","O’Reilly Media", 1,"02/08/2013",["978-1449325862","1449325866"], ["Richard E. Silverman"])
        @ref6=Articulo.new("Los Fundamentos de Ruby","Internet","www.lpp.org","02/08/2013", ["Yo mismo"])
        @list3 = List.new([@ref1,@ref2,@ref3,@ref4,@ref5,@ref6])
        @list4 = List.new([@ref5,@ref6])
    end
    it "comprobrando el metodo all? con una lista de 6 elementos" do
      expect(@list3.all? { |ref| ref.title.length >= 5}).to eq(true)
      expect(@list3.all? { |ref| ref.title.length >= 1000 }).to eq(false)
    end 
    it "comprobrando el metodo any? con una lista de 6 elementos" do
      expect(@list3.any? { |ref| ref.title.length < 30 }).to eq(true)
      expect(@list3.any? { |ref| ref.title.length > 100}).to eq(false)
    end 
    it "comprobrando el metodo collect con una lista de 6 elementos" do
      expect(@list3.map{|i| i.title}).to eq(["Programming Ruby 1.9 &2.0: The Pragmatic Programmers Guide","Pro Git 2009th Edition","The Ruby Programming Language","The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","Git Pocket Guide","Los Fundamentos de Ruby"])
      expect(@list3.collect{|i| i.title}).to eq(["Programming Ruby 1.9 &2.0: The Pragmatic Programmers Guide","Pro Git 2009th Edition","The Ruby Programming Language","The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends","Git Pocket Guide","Los Fundamentos de Ruby"])
    end 
    it "comprobrando el metodo count con una lista de 6 elementos" do
      expect(@list3.count).to eq(6)
    end
    it "comprobrando el metodo detect con una lista de 6 elementos" do
      expect(@list3.detect {|i| i.title == "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends"}).to eq(@list3.find  {|i| i.title == "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends"})
      expect(@list3.find  {|i| i.title == "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends"}).to eq(@list3.detect {|i| i.title == "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends"})
    end
    it "comprobrando drop" do
      expect(@list3.drop(5)[0].title).to eq("Los Fundamentos de Ruby")
    end
    it "comprobrando max" do
      expect(@list3.max.title).to eq("The Ruby Programming Language")
    end
    it "comprobrando min" do
      expect(@list3.min.title).to eq("Git Pocket Guide")
    end
    it "comprobrando sort" do
      expect(@list4.sort[0].title=="Git Pocket Guide"&&@list4.sort[1].title=="Los Fundamentos de Ruby").to eq(true)
    end
  end

  describe Cita do
    before :each do
         @ref1=CitaLibro.new()
         @ref2=CitaCapitulo.new()
         @ref3=CitaArticulo.new()
         @ref4=CitaEdoc.new()
    end
    it "Cita libro responde a libro" do
      expect(@ref1).to respond_to(:autor)
      expect(@ref1.autor :nombre=> "Nombre", :apellido=>"Apellido").to_not raise_error
      expect(@ref1).to respond_to(:fecha)
      expect(@ref1.fecha "2008").to_not raise_error
      expect(@ref1).to respond_to(:libro)
      expect(@ref1.libro :titulo=>"Titulo", :subtitulo=>"Subtítulo", :editor=>"Editorial", :edicion=>1, :volumen=>3).to_not raise_error
      
    end
    it "Cita capitulo responde a capitulo" do
      expect(@ref2).to respond_to(:autor)
      expect(@ref2.autor :nombre=> "Nombre", :apellido=>"Apellido").to_not raise_error
      expect(@ref2).to respond_to(:fecha)
      expect(@ref2.fecha "2008").to_not raise_error
      expect(@ref2).to respond_to(:capitulo)
      expect(@ref2.capitulo :titulo=>"Titulo", :subtitulo=>"Subtítulo", :capitulo=>"Capítulo", :editor=>"Editorial", :edicion=>1, :volumen=>3).to_not raise_error
    end
    it "Cita artículo responde a articulo" do
      expect(@ref3).to respond_to(:autor)
      expect(@ref3.autor :nombre=> "Nombre", :apellido=>"Apellido").to_not raise_error
      expect(@ref3).to respond_to(:fecha)
      expect(@ref3.fecha "2008").to_not raise_error
      expect(@ref3).to respond_to(:articulo)
      expect(@ref3.articulo :titulo=>"Titulo", :medio=>"Medio", :pagina=>10).to_not raise_error
    end
   it "Cita edoc responde a edoc" do
      expect(@ref4).to respond_to(:autor)
      expect(@ref4.autor :nombre=> "Nombre", :apellido=>"Apellido").to_not raise_error
      expect(@ref4).to respond_to(:fecha)
      expect(@ref4.fecha "2008").to_not raise_error
      expect(@ref4).to respond_to(:edoc)
      expect(@ref4.edoc :titulo=>"Titulo", :edicion=>10, :medio=>"Prensa digital", :editor=>"editor", :enlace=>"www.prueba.net", :acceso=>"22/10/2015").to_not raise_error
    end
  end