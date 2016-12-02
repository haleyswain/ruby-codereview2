require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/Word")
require('./lib/definition')

get('/') do
  erb(:index)
end

get('/wordform') do
  erb(:wordform)
end

get('/definitionform') do
  erb(:definitionform)
end

post('/new_definition') do
  @new_word = Word.all()
  @meaning = Definition.all()
  definition_input = params.fetch('definition')
  meaning = Definition.new(definition_input)
  meaning.save()
  erb(:wordbank)
end



post('/get_word') do
  entry = params.fetch('entry')
  Word.new(entry).save()
  @new_word = Word.all()
  erb(:definitionform)
end
