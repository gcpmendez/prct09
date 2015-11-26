require 'spec_helper'

describe Book do
  before :each do
    @book1 = Book.new("Don Quijote","Anaya", 4,"10/05/1980",["1234567890","123789456"], ["Cervantes","Y otro"],"Históricos españoles")
  end
  
  # Debe existir o no una serie.
  it 'Debe existir o no una serie' do
    expect(@book1.get_serie.length).to be >= 0
  end
  
  # Debe existir una editorial.
  it 'Debe existir una editorial' do
    expect(@book1.get_editorial).not_to be_empty  
  end
  
  # Debe existir un número de edición.
  it 'Debe existir un número de edición' do
    expect(@book1.get_edition).to be > 0  
  end
  
  # Debe existir uno o más números ISBN.
  it 'Debe existir uno o más números ISBN' do
    expect(@book1.get_isbn.size).not_to be 0
  end
  
  # Existe un método para obtener la serie.
  it 'Existe un método para obtener la serie' do
    expect(@book1).to respond_to(:get_serie) 
  end 
  
  # Existe un método para obtener la editorial.
  it 'Existe un método para obtener la editorial' do
    expect(@book1).to respond_to(:get_editorial) 
  end 
  
  # Existe un método para obtener el número de edición.
  it 'Existe un método para obtener el número de edición' do
    expect(@book1).to respond_to(:get_edition) 
  end 
  
  # Existe un ḿetodo para obtener el listado de ISBN.
  it 'Existe un ḿetodo para obtener el listado de ISBN' do
    expect(@book1).to respond_to(:get_isbn) 
  end 
  
  # Existe un ḿetodo para obtener la referencia formateada.
  it 'Existe un ḿetodo para obtener la referencia formateada' do
    expect(@book1.to_s).to eq("Cervantes , Y otro.\nDon Quijote.\n(Históricos españoles).\nAnaya; 4 Edicion (10/05/1980).\nISBN 10: 1234567890.\nISBN 9: 123789456.")
  end 

end
