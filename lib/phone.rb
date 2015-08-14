class Phone
  @@phone_numbers = []
  #initialize
    #area code
    #phone number
    #type
  define_method(:initialize) do |area_code, phone_number, type|
    @area_code = area_code
    @phone_number = phone_number
    @type = type
  end

  define_method(:save) do
    @@phone_numbers.push(self)
  end

  define_singleton_method(:all) do
    @@phone_numbers
  end

  define_method(:get_numbers) do
    return @@phone_numbers
  end
end
