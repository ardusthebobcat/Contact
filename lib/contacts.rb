class Contacts
  #initialize
  attr_reader(:first_name, :last_name, :title, :company, :emails, :phones, :addresses)

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:title)
    @company = attributes.fetch(:company)
    #email addresses
    #phone
    #mail
  end

  #Singleton methods, mainly #find, #add, #delete

  #fetch methods for all 6 properties
  define_method(:first_name) do
    return @first_name
  end

end

class Email
  #initialize
    #address
    #type (home, work, other?)
end

class Mail
  #initialize
    #street
    #city
    #state
    #zip
    #type (home, work, other)
end

class Phone
  #initialize
    #area code
    #phone number
    #type
end
