require('sinatra')
require('sinatra/reloader')
require('./lib/contacts')
require('./lib/email')
require('./lib/mail')
require('./lib/phone')
require('pry')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/index') do
  erb(:index)
end

get('/new_contact_page') do
  erb(:add_contact)
end

get('/phone_page') do
  erb(:phone_form)
end

#this method doesnt work entirely yet
post('/add_phone') do
  area_code = params.fetch('area_code')
  phone_number = params.fetch('phone_number')
  phone_type = params.fetch('phone_type')
  new_phone_number = Phone.new(area_code,phone_number,phone_type)
  @contacts = Contacts.all()
  erb(:index)
end

post('/add_contact') do
  first = params.fetch('first')
  last = params.fetch('last')
  title = params.fetch('title')
  company = params.fetch('company')
  empty_mail = Mail.new("", "", "",00000, "")
  empty_email = Email.new("", "")
  empty_phone = Phone.new(123, 3333333, "")
  new_contact = Contacts.new({:first_name => first, :last_name => last, :title => title, :company => company,
    :phone => empty_phone , :email => empty_email, :address => empty_mail})
  #new_contact_2 = Contact.new()
  new_contact.save()
  #new_contact_2.save()
  @contacts = Contacts.all()
  erb(:index)
end
