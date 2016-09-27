require 'sinatra'
require 'pathname'
require 'json'

def parse_config
  data = File.read('config.json')
  JSON.parse(data)
end

get '/' do
  return erb :config_error unless Pathname.new('config.json').exist?
  @config = parse_config
  erb :index
end

get '/test' do
  JSON.generate({method: 'get', data: [1,2,3]})
end

post '/test' do
  JSON.generate({method: 'post', data: [4,6,7]})
end
