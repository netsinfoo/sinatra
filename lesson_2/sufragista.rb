require 'sinatra'
# Estas são constantes globais.
# Um dicionario.
Opcoes = {
    'HAM' => 'Hambúrger',
    'PIZ' => 'Pizza',
    'SUS' => 'Sushi',
    'LAM' => 'Lámen',
  }

get '/' do 
    @titulo =" Ben vindos aos CAras!!"
    erb :index
end

post '/cast' do
    @titulo ="Obrigado por votar"
    @voto = params['voto']
    erb :cast
end



