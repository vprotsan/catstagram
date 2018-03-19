require 'sinatra'
require 'pg' #=>postgress
conn = PG::Connection.open(:dbname => 'contacts')

get '/' do
  res  = conn.exec('SELECT * FROM people')
  #p res.getvalue(0,0)
  # format them to be read by other computers
  content_type :json
  {number_of_results: res.ntuples}.to_json
end

get '/contacts' do
  "all contacts"
  res  = conn.exec('SELECT first_name, last_name FROM people')
  content_type :json
  res.each_with_index.map{ |x, i| res[i] }.to_json
end

get '/contacts/:id' do
  "view an existing contact"
  res = conn.exec_params(
    'SELECT * FROM people WHERE id = $1 LIMIT 1',
    [params[:id]]
  )
  # format them to be read by other computers
  content_type :json
  res.each_with_index.map{ |x, i| res[i] }.to_json

end

post '/contacts' do
  "create new contact"
end

put '/contacts/:id' do
  "update an existing contact"
end

delete '/contacts/:id' do
  "delete an existing contact"
end





#puts '/contacts'

#named parameter

#localhost:4545/contacts/75
#75 is identifier
#name segment(could be id, dog breed, anything meaningful)
#params['name']
#n stores params[name]
# params comes from Sinatra
