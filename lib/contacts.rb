class Contacts
  @@contacts =[]
  attr_reader(:first_name, :last_name, :title, :company, :email, :phone, :address)

  #initialize
  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:title)
    @company = attributes.fetch(:company)
    @email = attributes.fetch(:email)
    @phone = attributes.fetch(:phone)
    @address = attributes.fetch(:address)
  end

  #Singleton methods, mainly #find, #add, #delete
end
