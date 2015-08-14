class Mail
  @@addresses = []
  #initialize
  define_method(:initialize) do |street,city,state, zip, type|
    @street = street #street
    @city = city #city
    @state = state #state
    @zip = zip #zip
    @type = type#type (home, work, other)
  end

  define_method(:save) do
    @@addresses.push(self)
  end

  define_method(:get_addresses) do
    return @@addresses
  end

end
