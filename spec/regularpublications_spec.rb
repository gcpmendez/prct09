require 'spec_helper'

describe Regularpublications do
  before :each do
    @reg1 = Regularpublications.new(["Antony","Vincent"],"publicaciones", "10/05/1980")
  end
  
  # Debe existir uno o más autores
  it 'Debe existir uno o más autores' do
    expect(@reg1.get_authors.size).not_to be 0
  end
  
  # Debe existir un título
  it 'Debe existir un título' do
    expect(@reg1.get_title).not_to be_empty
  end
  
  # Debe existir una fecha de publicación.
  it 'Debe existir una fecha de publicación' do
    expect(@reg1.date).not_to be_empty 
  end
  
  
  # Existe un método para obtener el listado de autores.
  it 'Existe un método para obtener el listado de autores' do
    expect(@reg1).to respond_to(:get_authors) 
  end  
  
  # Existe un método para obtener el título.
  it 'Existe un método para obtener el título' do
    expect(@reg1).to respond_to(:get_title) 
  end 
  
  
  
  # Existe un método para obtener la fecha de publicacíon.
  it 'Existe un método para obtener la fecha de publicación' do
    expect(@reg1).to respond_to(:date) 
  end 
  
end
