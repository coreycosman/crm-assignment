class Contact
  @@contacts = []
  @@id = 1



# This method should call the initializer,
# store the newly created contact, and then return it

  def self.create(first_name, last_name, email, note)
    full_name = Contact.new(first_name, last_name, email, note)
    @@contacts << full_name
    return full_name
  end


  # This method should return all of the existing contacts

  def self.contacts_reader
    @@contacts
  end


# This method should accept an id as an argument
# and return the contact who has that id
  def self.find_contact(id)
    @@contacts.each do |contact|
      if contact.id_reader == id.to_i
      return contact
      end
    end
  end

#delete all contacts
  def self.delete_contacts
    @@contacts.clear
  end



# This method should work similarly to the find method above
# but it should allow you to search for a contact using attributes other than id
# by specifying both the name of the attribute and the value
# eg. searching for 'first_name', 'Betty' should return the first contact named Betty

  def self.find_by
    puts "search by: first name, last name, email, note"
    attribute = gets.chomp
    puts "what #{attribute} are you searching for?"
    value = gets.chomp
    matched_contact = nil
    @@contacts.each do |contact|
      if attribute == "first name" && value == contact.first_name_reader
        matched_contact = contact
      elsif attribute == "last name" && value == contact.last_name_reader
        matched_contact = contact
      elsif attribute == "email" && value == contact.email_reader
        matched_contact = contact
      elsif attribute == "note" && value == contact.note_reader
        matched_contact = contact
      end
    end
    matched_contact
  end


#__________________________________


  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

#this method resturns the full name of a contact
  def full_name
  full_name = "#{@first_name} #{@last_name}"
  return full_name
  end



#returns an array of all the contact's attributes
  def attribute_reader
    [@first_name, @last_name, @email, @note]
  end

# This method should allow you to specify
# 1. which of the contact's attributes you want to update
# 2. the new value for that attribute
# and then make the appropriate change to the contact
  def update
    puts "select attribute to update: first name, last name, email, or note"
    attribute = gets.chomp
    puts "change #{attribute} to?"
    new_value = gets.chomp
    if attribute == "first name"
      first_name_writer(new_value)
    elsif attribute == "last name"
      last_name_writer(new_value)
    elsif attribute == "email"
      email_writer(new_value)
    elsif attribute == "note"
      note_writer(new_value)
    end
    attribute_reader
  end
 # This method should delete the contact
  def delete(id)
    @@contacts.delete(id)
  end



#attribute writers
  def first_name_writer(str)
    @first_name = str
  end

  def last_name_writer(str)
    @last_name = str
  end

  def email_writer(str)
    @email =  str
  end

  def note_writer(str)
    @note = str
  end
#attribute readers
  def id_reader
    @id
  end

  def first_name_reader
    @first_name
  end

  def last_name_reader
    @last_name
  end

  def email_reader
    @email
  end

  def note_reader
    @note
  end


end


#long method for find_by
# end
# def self.find_by
#   puts "search by: first name, last name, email, note"
#   attribute = gets.chomp
#   if attribute == "first name"
#   puts "what #{attribute} are you searching for?"
#   instance_attribute = gets.chomp
#   contact_matched = nil
#     @@contacts.each do |contact|
#       if instance_attribute == contact.first_name_reader
#       contact_matched = contact
#       end
#     end
#     contact_matched
#   elsif attribute == "last name"
#   puts "what #{attribute} are you searching for?"
#   instance_attribute = gets.chomp
#   contact_matched = nil
#     @@contacts.each do |contact|
#       if instance_attribute ==  contact.last_name_reader
#       contact_matched = contact
#       end
#     end
#     contact_matched
#   elsif attribute == "email"
#   puts "what #{attribute} are you searching for?"
#   instance_attribute = gets.chomp
#   contact_matched = nil
#     @@contacts.each do |contact|
#       if instance_attribute == contact.email_reader
#       contact_matched = contact
#       end
#     end
#     contact_matched
#   elsif attribute == "note"
#   puts "what #{attribute} are you searching for?"
#   instance_attribute = gets.chomp
#   contact_matched = nil
#     @@contacts.each do |contact|
#       if instance_attribute == contact.note_reader
#       contact_matched = contact
#       end
#     end
#     contact_matched
#   end
# end
