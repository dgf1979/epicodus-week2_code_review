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

#redirect root route to /words route
get('/') do
  redirect to('/words')
end

#list all words
#form feild to add a new word
get('/words') do
  @words = Word.all()
  erb(:words)
end

#post method for adding a word
post('/words') do
  @words = Word.all()
  new_word = Word.new({ :word => params.fetch('word') })
  new_word.save()
  erb(:words)
end

#list all definitions for a word
#form to add a definition
get('/words/:word/definitions') do
  word = params.fetch('word')
  erb(:definitions)
end

#post method for adding a definition
post('/words/:word/definitions') do
  word = params.fetch('word')
  definition = params.fetch('definition')
  erb(:definitions)
end
