class Email
  @@email_addresses = []
  #initialize
  define_method(:initialize) do |address, type|
    @address = address
    @type = type
  end

  define_singleton_method(:all) do
    @@email_addresses
  end

  define_method(:save) do
    @@email_addresses.push(self)
  end

  define_method(:get_email_addresses) do
    return @@email_addresses
  end
end
