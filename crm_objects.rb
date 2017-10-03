require_relative("crm_class")

crm = CRM.new

Contact.create("first", "last", "first_last@gmail.com", "note" )

crm.main_menu
