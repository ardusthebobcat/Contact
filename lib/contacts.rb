class Contacts
  @@contacts =[]
  attr_reader(:first_name, :last_name, :title, :company, :email, :phone, :addresses)

  #initialize
  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:title)
    @company = attributes.fetch(:company)
    #@email = []
    @email = attributes.fetch(:email).push
    @phone = attributes.fetch(:phone)
    #mail
  end

  #Singleton methods, mainly #find, #add, #delete
end

class Mail
  #initialize
    #street
    #city
    #state
    #zip
    #type (home, work, other)
end
