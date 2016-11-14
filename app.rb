require('sinatra')
require('sinatra/reloader')

get('/') do
  @recipient = "Jessica"
  @sender = "Jane"
  erb(:letter)
end

get("/australia") do
  @recipient = "Jessica"
  @sender = "Jane"
  erb(:australia)
end

get("/photos") do
  erb(:photos)
end

get("/form") do
 erb(:form)
end


get('/greeting_card') do
  @sender = params.fetch('match_sender')
  @recipient = params.fetch('recipient')
  erb(:greeting_card)
end
