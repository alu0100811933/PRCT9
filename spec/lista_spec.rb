require 'spec_helper'
require 'lista'

describe Lista do

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


    L = Lista::Lista.new()

    it "Nuestros objetos son iguales" do
        
        L.insert(LIBRO1)
        L.insert(LIBRO1)


      #  expect(L.nodo_ini[0]).to eq(L.nodo_act[0])
        
        expect(LIBRO1).to eq(LIBRO2)
        
    end







end
    






