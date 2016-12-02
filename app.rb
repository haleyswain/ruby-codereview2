require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/dictionary")

get('/') do
  erb(:index)
end


post('/get_word') do
  entry = params.fetch('input')
  Word.new(entry).save()
  @new_word = Word.all()
  erb(:wordbank)
end

get('/wordbank') do
  @new_word = Word.all()
  erb(:wordbank)
end
