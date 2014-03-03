require 'sinatra'

get '/' do
  "Sanity - I am up"
end

post '/hangout_registration' do
  puts 'jay I received something!'
  'Cool story'
end