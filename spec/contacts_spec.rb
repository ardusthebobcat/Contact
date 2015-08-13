require('rspec')
require('contacts')
require('email')
require('mail')
require('phone')

describe('Contacts') do

  describe("#first_name") do
    it("returns the first name of person") do
      test_name = "Susan"
      test_contact = Contacts.new({:first_name => test_name, :last_name => "Jones", :title => "Analyst", :phone => [703, 5039874, "home" ], :company => "Apple", :email =>["www.google.com", "home"],:address =>["107 Cherry Lane", "Wonderland", "Colorado", 11111, "home"]})
      expect(test_contact.first_name()).to(eq("Susan"))
    end
  end

  describe("#last_name") do
    it("returns the last name") do
      test_contact = Contacts.new({:address =>["107 Cherry Lane", "Wonderland", "Colorado", 11111, "home"],:first_name => "Susan", :last_name => "Jones", :title => "Analyst", :phone => [703, 5039874, "home" ], :company => "Apple", :email =>["www.google.com", "home"]})
      expect(test_contact.last_name()).to(eq("Jones"))
    end
  end

  #make a new test contact with single (another spec for multiple) email addresses
  #return one/both emails.
  describe('#email') do
    it("returns email when its the only email") do
      test_contact = Contacts.new({:first_name => "Michael",:address =>["107 Cherry Lane", "Wonderland", "Colorado", 11111, "home"], :last_name => "Summers", :title => "student", :company => "Epicodus", :phone => [703, 5039874, "home" ], :email =>["www.google.com", "home"]})
      #:email => Email.all()
      expect(test_contact.email()).to(eq(["www.google.com", "home"]))
    end

    it("returns email when multiple emails exist") do
      test_email_1 = Email.new("www.google.com", "Work")
      test_email_2 = Email.new("www.apple.com", "work")
      test_email_1.save()
      test_email_2.save()
      test_contact  = Contacts.new({:first_name => "Michael",:address =>["107 Cherry Lane", "Wonderland", "Colorado", 11111, "home"], :last_name => "Summers", :title => "student", :company => "Epicodus", :phone => [703, 5039874, "home" ], :email => Email.all()})
      expect(test_contact.email()).to(eq([test_email_1, test_email_2]))
    end


  end

  describe('#phone') do
    it("returns phone number") do
      test_contact = Contacts.new({:first_name => "Michael", :last_name => "Summers",:address =>["107 Cherry Lane", "Wonderland", "Colorado", 11111, "home"], :title => "student", :company => "Epicodus", :phone => [703, 5039874, "home" ], :email =>["www.google.com", "home"]})
      expect(test_contact.phone()).to(eq([703, 5039874, "home"]))
    end

    it("returns multiple phone numbers") do
      phone_number_1 = Phone.new(702, 3039874, "home")
      phone_number_2 = Phone.new(793, 6039874, "home")
      phone_number_1.save()
      phone_number_2.save()
      test_contact = Contacts.new({:first_name => "Michael", :last_name => "Summers",:address =>["107 Cherry Lane", "Wonderland", "Colorado", 11111, "home"], :title => "student", :company => "Epicodus", :phone => Phone.all(), :email =>["www.google.com", "home"]})
      expect(test_contact.phone()).to(eq([phone_number_1, phone_number_2]))

    end
  end

  describe('#mail') do
    it("returns mailing address info") do
      test_address = Mail.new("107 Cherry Lane", "Wonderland", "Colorado", 11111, "home")
      test_contact = Contacts.new({:first_name => "Michael", :last_name => "Summers", :title => "student", :company => "Epicodus", :phone => [703, 5039874, "home" ], :email =>["www.google.com", "home"], :address => test_address})

      expect(test_contact.address()).to(eq(test_address))
    end
      #test_address = Mail.new("107 Cherry Lane", "Wonderland", "Colorado", 11111, "home")
      #test_address.save()
      #test_address_2 = Mail.new . . . .
      #test_address.save()
      #test_contact = Contacts.new({:first_name => "Michael",, :last_name => "Summers", :title => "student", :company => "Epicodus", :phone => [703, 5039874, "home" ], :email =>["www.google.com", "home"], :address = [test_address, test_address2]})
      #expect(test_contact.mail()).to(eq([test_address, test_address2]))

  end

end
