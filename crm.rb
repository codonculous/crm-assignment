require_relative "contact"

class CRM

  attr_accessor :crm_name
  def initialize(crm_name)
    @crm_name

  end

  def main_menu
    while true # repeat indefinitely
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
    when 3 then modify_existing_contact
    when 4 then modify_existing_contact
    when 5 then modify_existing_contact
    when 6 then modify_existing_contact
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

  end


end
