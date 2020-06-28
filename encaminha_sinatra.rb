require 'rubygems'
require 'sinatra'

before do
  
    

end


class Stream
  def each
    100.times { |i| yield "#{i} \n  \t" }        
  end
end
get ('/') {Stream.new} 

get '/dogs' do 

    
end

get '/dog/:id' do |id|
   
   "Vem #{params['id']}"
 end

post '/dog' do
    "Cria um novo cachorro na lista"
end

put '/dog/:id' do
    "O metodo atualiza um cachorro existente"
end

delete '/dog/:id' do
    "O metodo deleta um cachoro existente"
end


