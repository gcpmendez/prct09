require 'spec_helper'

describe LppGrupo3 do
  before :each do
    @ref1 = G03ref.new("Don Quijote","Anaya", 4,"10/05/1980",["1234567890","123789456"], ["Cervantes","Y otro"],"Históricos españoles")
  end
  
  # Debe existir uno o más autores
  it 'Debe existir uno o más autores' do
    expect(@ref1.get_authors.size).not_to be 0
  end
  
  # Debe existir un título
  it 'Debe existir un título' do
    expect(@ref1.get_title).not_to be_empty
  end
  
  # Debe existir o no una serie.
  it 'Debe existir o no una serie' do
    expect(@ref1.get_serie.length).to be >= 0
  end
  
  # Debe existir una editorial.
  it 'Debe existir una editorial' do
    expect(@ref1.get_editorial).not_to be_empty  
  end
  
  # Debe existir un número de edición.
  it 'Debe existir un número de edición' do
    expect(@ref1.get_edition).to be > 0  
  end
  
  # Debe existir una fecha de publicación.
  it 'Debe existir una fecha de publicación' do
    expect(@ref1.get_date).not_to be_empty 
  end
  
  # Debe existir uno o más números ISBN.
  it 'Debe existir uno o más números ISBN' do
    expect(@ref1.get_isbn.size).not_to be 0
  end
  
  # Existe un método para obtener el listado de autores.
  it 'Existe un método para obtener el listado de autores' do
    expect(@ref1).to respond_to(:get_authors) 
  end  
  
  # Existe un método para obtener el título.
  it 'Existe un método para obtener el título' do
    expect(@ref1).to respond_to(:get_title) 
  end 
  
  # Existe un método para obtener la serie.
  it 'Existe un método para obtener la serie' do
    expect(@ref1).to respond_to(:get_serie) 
  end 
  
  # Existe un método para obtener la editorial.
  it 'Existe un método para obtener la editorial' do
    expect(@ref1).to respond_to(:get_editorial) 
  end 
  
  # Existe un método para obtener el número de edición.
  it 'Existe un método para obtener el número de edición' do
    expect(@ref1).to respond_to(:get_edition) 
  end 
  
  # Existe un método para obtener la fecha de publicacíon.
  it 'Existe un método para obtener la fecha de publicación' do
    expect(@ref1).to respond_to(:get_date) 
  end 

  # Existe un ḿetodo para obtener el listado de ISBN.
  it 'Existe un ḿetodo para obtener el listado de ISBN' do
    expect(@ref1).to respond_to(:get_isbn) 
  end 
  
  # Existe un ḿetodo para obtener la referencia formateada.
  it 'Existe un ḿetodo para obtener la referencia formateada' do
    expect(@ref1.to_s).to eq("")
  end 

end
