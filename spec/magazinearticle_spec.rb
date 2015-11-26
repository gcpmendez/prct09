require 'spec_helper'

describe MagazineArticle do
  before :each do
    @magArticle1 = MagazineArticle.new(["Vincent"],"exclusiva enero","10/05/1980","hola!", 4,1, 0, 10)
  end
  
 # Debe existir uno o más autores
  it 'Debe existir uno o más autores' do
    expect(@magArticle1.get_authors.size).not_to be 0
  end
  
  # Debe existir un título
  it 'Debe existir un título' do
    expect(@magArticle1.get_title).not_to be_empty
  end
  
  # Debe existir una fecha de publicación.
  it 'Debe existir una fecha de publicación' do
    expect(@magArticle1.date).not_to be_empty 
  end
  
  
  # Existe un método para obtener el listado de autores.
  it 'Existe un método para obtener el listado de autores' do
    expect(@magArticle1).to respond_to(:get_authors) 
  end  
  
  # Existe un método para obtener el título.
  it 'Existe un método para obtener el título' do
    expect(@magArticle1).to respond_to(:get_title) 
  end 
  
  # Debe existir la clase
  it "Debe existir la clase" do
		expect(MagazineArticle.new(["Vincent"],"exclusiva enero","10/05/1980","hola!", 4,1, 0, 10)).not_to be_nil
	end
  
  # Existe un método de impresión del artículo.
  it 'Existe un método de impresión del artículo' do
    		expect(@magArticle1.to_s).to eq("Vincent\nexclusiva enero.\nhola!, (4), 10/05/1980.")
		
  end 
  
end
