require('rspec')
require('contacts')

describe('Contacts') do

  describe("#first_name") do
    it("returns the first name of person") do
      test_contact = Contacts.new({:first_name => "Susan", :last_name => "Jones", :title => "Analyst", :company => "Apple"})
      expect(test_contact.first_name()).to(eq("Susan"))
    end
  end

  describe("#last_name") do
    it("returns the last name") do
      test_contact = Contacts.new({:first_name => "Susan", :last_name => "Jones", :title => "Analyst", :company => "Apple"})
      expect(test_contact.last_name()).to(eq("Jones"))
    end
  end
end
