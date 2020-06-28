require 'rubygems'
require 'sinatra'


get '/' do
    "Ola mundo são #{Time.now} horario do servidor"
end