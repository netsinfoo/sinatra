require 'sinatra'
require 'yaml/store'
# Estas são constantes globais.
# Um dicionario.
Opcoes = {
    'HAM' => 'Hambúrger',
    'PIZ' => 'Pizza',
    'SUS' => 'Sushi',
    'LAM' => 'Lámen',
    'MAC' => 'Macarrao',
  }

get '/' do 
    @titulo =" Ben vindos aos CAras!!"
    erb :index
end

post '/cast' do
    @titulo ="Obrigado por seu voto"
    @vote = params['vote']
    @store = YAML::Store.new 'votos.yml'
    @store.transaction do
        @store['votes'] ||= {}
        @store['votes'][@vote] ||= 0
        @store['votes'][@vote] += 1
    end
    erb :cast
end

get '/results' do
    @titulo =  'Resultados até agora!!'
    @store = YAML::Store.new 'votos.yml'
    @votes = @store.transaction{@store['votes']}
    erb :results
end



