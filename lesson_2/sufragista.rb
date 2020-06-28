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

get '/results' do
    @votos = {'HAM' => 7, 'PIZ' => 5, 'SUS' => 3 }
    erb :results
end



