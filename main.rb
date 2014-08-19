require 'sinatra'

# Templating engine
require 'slim'

# CSS extension language
require 'sass'

require 'sinatra/reloader' if development?

# set :public_folder, 'assets'
# set :views, 'templates'

get('/css/styles.css'){ scss :styles }

get '/' do
  # @title = "Home"
  slim :home
end

get '/about' do
  @title = "All About This Website"
  slim :about
end

get '/contact' do
  @title = "Contact us"
  slim :contact#, layout => :special
end

not_found do
  slim :not_found
end

get '/fake-error' do
  # status 500
  "There’s nothing wrong, really :P"
end