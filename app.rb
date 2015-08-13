require('sinatra')
require('sinatra/reloader')
require('./lib/contacts')
require('./lib/email')
require('./lib/mail')
require('./lib/phone')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/index') do
  erb(:index)
end

get('/phone_page') do
  erb(:phone_form)
end

post('/add_phone') do
  area_code = params.fetch('area_code')
  phone_number = params.fetch('phone_number')
  phone_type = params.fetch('phone_type')
  new_phone_number = Phone.new(area_code,phone_number,phone_type)
  
  @output = Contacts.all()
  erb(:index)
end
