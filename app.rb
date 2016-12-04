require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/Word")
require('./lib/definition')

get('/') do
  @words = Word.all()
  erb(:wordbank)
end

get('/wordform') do
  erb(:wordform)
end

get('/definitionform') do
  erb(:definitionform)
end

get('/get_word') do
  erb(:definitionform)
end


post('/new_definition') do
  index = params.fetch("word-index").to_i
  @new_word = Word.all[index]
  definition_input = params.fetch('definition')
  meaning = Definition.new(definition_input)
  @new_word.add_term(meaning)
  meaning.save()
  redirect "/"
end


post('/get_word') do
  entry = params.fetch('entry')
  Word.new(entry).save()
  @new_word = Word.all()
  erb(:definitionform)
end
