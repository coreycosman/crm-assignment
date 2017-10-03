require_relative("contacts_class_database.rb")

contact_one = Contact.create(first_name: "contact", last_name: "one", email: "contact_one@gmail.com", note: "this is contact one")
contact_two = Contact.create(first_name: "contact", last_name: "two",  email: "contact_two@gmail.com", note: "this is contact two")
contact_three = Contact.create(first_name: "contact", last_name: "three",  email: "contact_three@gmail.com", note: "this is contact three")
contact_four =Contact.create(first_name: "contact", last_name: "four", email: "contact_four@gmail.com", note: "this is contact four")







# p Contact.contacts_reader
# p Contact.find_contact(contact_one)
# p contact_one.update
p Contact.find_by
