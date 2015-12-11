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

  describe Bibliografia do
    before :each do
         @ref1=CitaLibro.new([["Pérez","Antonio"],["César","Julio"]], 2008, "Paradigmas de programación", "Lenguajes Funcionales", "La Editorial", 10, 1)
         @ref2=CitaCapitulo.new([["Pérez","Antonio"],["César","Julio"]], 2008, "Lambdas",  "Paradigmas de programación", "Lenguajes Funcionales",  "La Editorial", 10, 1)
         @ref5=CitaLibro.new([["Pérez","Antonio"],["César","Julio"]], 2010, "Paradigmas de programación", "Lenguajes Estructurados",  "La Editorial", 5, 1)
         @ref3=CitaArticulo.new([["López","Arturo"]], 2015, "Aprender Ruby", "Informática de hoy", 15)
         @ref4=CitaEdoc.new([["Fernández","Juan"]], 2014, "Lenguajes orientados a objetos", 1, "Prensa Digital", "Informatica.com", "www.informatica.com","23/01/2014")
         @ref6=CitaEdoc.new([["Pérez","Antonio"]], 2015, "Lenguajes no orientados a objetos", 1, "Prensa Digital", "Informatica.com", "www.informatica.com","23/02/2014")
         @bib=Bibliografia.new([@ref1,@ref2,@ref3,@ref4])
    end
    it "Los nombres de los autores están invertidos" do
      expect(@ref1.to_s).to eq(" Pérez, A. & César, A. (2008b). Paradigmas de programación:  Lenguajes Funcionales. (10)  (1). La Editorial.")
      
    end
    it "Las entradas a la lista están ordenadas alfabéticamente de acuerdo al apellido del primer autor"do
      expect(@ref1 > @ref3).to eq(true)
    end
    it "Si se repite autor/es se ordena de acuerdo al año de publicación" do
      expect(@ref1 < @ref5).to eq(true)
    
    end
    it "Si aparece un autor solo y luego como parte del grupo, se lista primero el autor solo "do
      expect(@ref1 > @ref6).to eq(true)
    
    end
    it "Si coincide el autor/es y el año de publicación se ordena de acuerdo al orden alfabético del titulo del articulo del capítulo citado y asigne letras al año"do
      expect(@ref1.sufijo==2).to eq(true)
      expect(@ref2.sufijo==1).to eq(true)
      expect(@ref2 < @ref1).to eq(true)
    
    end
    it "Su utiliza & en lugar de y o and para listar varios autores"do
      expect(@ref1.to_s).to eq(" Pérez, A. & César, A. (2008b). Paradigmas de programación:  Lenguajes Funcionales. (10)  (1). La Editorial.")
    
    end
    
    it "Se pone en mayuscula la primera letra de las palabras principales de los títulos de revista"do
      expect(@ref3.to_s).to eq(" López, A. (2015). Aprender Ruby. Informática De Hoy. (pag.:15).")
    end
    
    
    it "La salida para edoc se correponde con el estandar"do
      expect(@ref4.to_s).to eq(" Fernández, J. (2014). Lenguajes orientados a objetos (1). [Prensa Digital]. Informatica.com. www.informatica.com. [23/01/2014].")
    end
    
    it "Existe in metodo para insertar nuevas citas bibliofráficas en un una bibliografía existente"do
      expect(@bib).to respond_to(:insertar)
    end
    
    it "Cuando se inserta un nuevo elemento este se ordena correctamente"do
      expect(@bib.insertar([@ref5])).not_to be(raise_error)
      expect(@ref1 < @ref5).to eq(true)
      expect(@bib.to_s).to eq(" Fernández, J. (2014). Lenguajes orientados a objetos (1). [Prensa Digital]. Informatica.com. www.informatica.com. [23/01/2014].\n López, A. (2015). Aprender Ruby. Informática De Hoy. (pag.:15).\n Pérez, A. & César, A. (2008a). Lambdas. Paradigmas de programación. (10) (1).La Editorial.\n Pérez, A. & César, A. (2008b). Paradigmas de programación:  Lenguajes Funcionales. (10)  (1). La Editorial.\n Pérez, A. & César, A. (2010). Paradigmas de programación:  Lenguajes Estructurados. (5)  (1). La Editorial.")
    end
    
  end