# Configure your routes here
# See: http://www.rubydoc.info/gems/lotus-router/#Usage

get '/', to: 'home#index'

get '/todos', to: 'todos#index'
get '/todos/new', to: 'todos#new'
post '/todos', to: 'todos#create'
