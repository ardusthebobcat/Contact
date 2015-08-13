require('rspec')
require('contacts')

describe('Contacts') do

  describe("#first_name") do
    it("returns the first name of person") do
      test_contact = Contacts.new({:first_name => "Susan", :last_name => "Jones", :title => "Analyst", :company => "Apple", :email =>["www.google.com", "home"]})
      expect(test_contact.first_name()).to(eq("Susan"))
    end
  end

  describe("#last_name") do
    it("returns the last name") do
      test_contact = Contacts.new({:first_name => "Susan", :last_name => "Jones", :title => "Analyst", :company => "Apple", :email =>["www.google.com", "home"]})
      expect(test_contact.last_name()).to(eq("Jones"))
    end
  end

  #make a new test contact with single (another spec for multiple) email addresses
  #return one/both emails.
  describe('#email') do
    it("returns email when its the only email") do
      test_contact = Contacts.new({:first_name => "Michael", :last_name => "Summers", :title => "student", :company => "Epicodus", :email =>["www.google.com", "home"]})
      expect(test_contact.email()).to(eq(["www.google.com", "home"]))
    end
  end

end
