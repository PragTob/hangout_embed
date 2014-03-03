require 'sinatra'
require 'json'

get '/' do
  "Sanity - I am up"
end

get '/start_hangout' do
  send_file 'start_hangout.html'
end

post '/hangout_registration' do
  request.body.rewind  # in case someone already read it
  data = JSON.parse request.body.read
  "So your url is #{data['hangoutUrl']} and your startData #{data['startData']}... interesting."
end