require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')
require('pry')

get('/test') do
  @test_var = "Sinatra OK"
  erb(:test)
end
