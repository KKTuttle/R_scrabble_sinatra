require("sinatra")
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/form') do
  erb(:form)
end

get('/results')do
  @score = params.fetch('scrabble').scrabble
  erb(:results)
end
