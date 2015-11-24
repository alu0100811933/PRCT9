require 'spec_helper'
require 'lista'

describe "# COMPARABLE" do

  LIBRO1 = Libro::Libro.new()

    aut0=%w{'Dave Thomas' 'Andy Hunt' 'Chad Fowler'}
      Tit0 = "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide"
      Ser0 = "(The Facets of Ruby)"
      Edt0 = "Pragmatic Bookshelf"
      Edc0 = "4 edition"
      fch0 = "(July 7, 2013)"
      num0 = %w{ ISBN-13:978-1937785499 ISBN-10:1937785491 }
      
      LIBRO1.setA(aut0)
      LIBRO1.setT(Tit0)
      LIBRO1.setS(Ser0)
      LIBRO1.setEdt(Edt0)
      LIBRO1.setEdc(Edc0)
      LIBRO1.setFecha(fch0)
      LIBRO1.setNum(num0)
      LIBRO1.setNp(100)
      
      
      LIBRO2 = Libro::Libro.new()

    aut1=%w{'Dave Thomas' 'Andy Hunt' 'Chad Fowler'}
      Tit1 = "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide"
      Ser1 = "(The Facets of Ruby)"
      Edt1 = "Pragmatic Bookshelf"
      Edc1 = "4 edition"
      fch1 = "(July 7, 2013)"
      num1 = %w{ ISBN-13:978-1937785499 ISBN-10:1937785491 }
      
      LIBRO2.setA(aut1)
      LIBRO2.setT(Tit1)
      LIBRO2.setS(Ser1)
      LIBRO2.setEdt(Edt1)
      LIBRO2.setEdc(Edc1)
      LIBRO2.setFecha(fch1)
      LIBRO2.setNum(num1)
      LIBRO2.setNp(100)

      LIBRO3 = Libro::Libro.new()
       LIBRO3.setNp(500)
       
      LIBRO4 = Libro::Libro.new()
       LIBRO4.setNp(3)
       
      LIBRO5 = Libro::Libro.new()
       LIBRO5.setNp(10)
       
      LIBRO6 = Libro::Libro.new()
       LIBRO6.setNp(21)



    it "# Nuestros objetos son iguales" do
     


      #  expect(L.nodo_ini[0]).to eq(L.nodo_act[0])
        
        expect(LIBRO1).to eq(LIBRO2)
       
       
       #expect(LIBRO1==LIBRO2).to eq(true) 
    end



it "# Igualación y diferencia de Revistas" do
    
    r1=Libro::Revista.new("NINTENDO")
    r1.setT("Título 1")
    
    r2=Libro::Revista.new("NINTENDO")
    r2.setT("Título 1")
    
    
    p1=Libro::Periodico.new("Col. 6")
    p1.setT("Periodico 1")
    
    d1=Libro::Documento.new("www.google.es")
    d1.setT("Documento 1")

    expect(r1==r2).to eq(true) 
    
    
    r2.setT("Título 2")
    expect(r1==r2).to eq(false) 


end


it "# Libro más grande que otro" do
    
    LIBRO1.setNp(120)
    
    expect(LIBRO1).to be >  LIBRO2
    expect(LIBRO2).to be <  LIBRO1

    #expect(LIBRO1>LIBRO2).to eq(true)
    
end

end

describe "# ENUMERABLE" do
  L = Lista::Lista.new()
    L.insert(LIBRO1)
    L.insert(LIBRO2)
    L.insert(LIBRO5)
    L.insert(LIBRO4)
    L.insert(LIBRO3)
    L.insert(LIBRO6)
  it "# Max y min lista" do
      expect(L.max).to eq(LIBRO3)
      expect(L.min).to eq(LIBRO4)
  end
  
  it "# Comprobrando el metodo any?" do
         expect(L.any?{|i| i == LIBRO5}).to eq(true)
     end
     
     it "# Comprobrando el metodo all?" do
        LIBRO_P = Libro::Libro.new()
         expect(L.all?{|i| i == LIBRO_P}).to eq(false)
     end 
     
      it "# Comprobrando el metodo count" do
      expect(L.count).to eq(6)
      end
    
    it "# Comprobrando el metodo detect" do
      LIBRO_MAL = Libro::Libro.new()
      expect(L.detect {|i| i == LIBRO1}).to eq(LIBRO1)
      expect(L.find {|i| i == LIBRO_MAL}).to eq(nil)
    end
    
    it "# Comprobrando sort" do
      expect(L.sort).to eq([LIBRO4, LIBRO5, LIBRO6, LIBRO2, LIBRO1, LIBRO3])
    end


end
    






