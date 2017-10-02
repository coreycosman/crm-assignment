require_relative("contacts_class")

class CRM

  def initialize

  end

  def main_menu
    while true #repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    end
  end

  def add_new_contact
    puts "enter first name"
    first_name = gets.chomp
    puts "enter last_name"
    last_name = gets.chomp
    puts "enter email"
    email = gets.chomp
    puts "enter a note"
    note = gets.chomp
    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    p Contact.contacts_reader
    puts "enter the id of the contact to modify"
    contact_name = gets.chomp
    contact_name.update
  end

  def delete_contact
    delete
  end

  def display_all_contacts
    Contact.contacts_reader
  end

  def search_by_attribute
    Contact.find_by
  end


end
