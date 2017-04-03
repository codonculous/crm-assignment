require_relative "contact"

class CRM

  attr_accessor :crm_name
  def initialize(crm_name)
    @crm_name

  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.chomp.to_i
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
    when 6 then exit(true)
    end
  end

  def add_new_contact
    Contact.create(first_name=nil,last_name=nil,email=nil,note=nil)
  end

  def modify_existing_contact


  end

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute
    puts "Which attribute would you like to search by?"
    puts '[1] first name'
    puts '[2] last name'
    puts '[3] email'
    puts '[4] note'
    puts 'Enter a numer: '
    attribute = gets.chomp.to_i
    contact_attritbutes = ["first_name","last_name","email","note"]
    puts "Please enter the #{contact_attritbutes[attribute -1]}: "
    attribute_value = gets.chomp
    Contact.find_by( contact_attritbutes[attribute -1], attribute_value )

  end


end
