class Contacts
  @@contacts =[]
  attr_reader(:first_name, :last_name, :title, :company, :email, :phones, :addresses)

  #initialize
  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:title)
    @company = attributes.fetch(:company)
    #@email = []
    @email = attributes.fetch(:email).push
    #phone
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

class Phone
  #initialize
    #area code
    #phone number
    #type
end
