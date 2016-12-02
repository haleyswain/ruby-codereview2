require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/Word")

get('/') do
  erb(:index)
end

get('/wordform') do
  erb(:wordform)
end

get('/definitionform') do
  @meaning = Definition.all()
  erb(:definitionform)
end

get('/wordbank') do
  @new_word = Word.all()
  erb(:wordbank)
end

post('/get_word') do
  entry = params.fetch('input')
  Word.new(entry).save()
  @new_word = Word.all()
  erb(:library)
end
