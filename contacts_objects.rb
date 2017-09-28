require_relative("contacts_class.rb")

contact_one = Contact.create("contact", "one", "contact_one@gmail.com", "this is contact one")
contact_two = Contact.create("contact", "two", "contact_two@gmail.com", "this is contact two")
contact_three = Contact.create("contact", "three", "contact_three@gmail.com", "this is contact three")
contact_four =Contact.create("contact", "four", "contact_four@gmail.com", "this is contact four")







# p Contact.contacts_reader
# p Contact.find_contact(contact_one)
# p contact_one.update
p Contact.find_by
