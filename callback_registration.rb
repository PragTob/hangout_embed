require 'sinatra'
require 'json'

class CallbackRegistration < Sinatra::Application

  # forcing SSl
  # http://bytesofpi.com/post/28952453059/forcing-ssl-in-a-sinatra-app
  configure :development, :test do
    set :host, 'localhost:4567'
    set :force_ssl, false
  end

  configure :production do
    set :host, 'floating-fjord-9792.herokuapp.com'
    set :force_ssl, true
  end

  get '/' do
    "Sanity - I am up"
  end

  get '/start_hangout' do
    send_file 'start_hangout.html'
  end

  get '/test' do
    send_file 'test.html'
  end

  post '/hangout_registration' do
    request.body.rewind  # in case someone already read it
    data = JSON.parse request.body.read
    "So your url is #{data['hangoutUrl']} and your startData #{data['startData']}... interesting."
  end
end