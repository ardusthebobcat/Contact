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
    @id = @@contacts.length().+(1)
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_method(:id) do
    @id
  end

  #Singleton methods, mainly #find, #add, #delete
  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(id)
        found_contact = contact
      end
    end
    found_contact
  end
end
