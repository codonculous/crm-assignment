require_relative "contact"

class Crm

  def initialize
    @contact_attritbutes = ["first_name","last_name","email","note"]
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
    when 6 then exit
    end
  end

  def add_new_contact
    l = 0
    attribute_list = []
    while l < @contact_attritbutes.length
      puts "Please enter the #{@contact_attritbutes[l]}"
      attribute_list[l] = gets.chomp
      l += 1
    end
    Contact.create(attribute_list[0]=nil,attribute_list[1]=nil,attribute_list[2]=nil,attribute_list[3]=nil)
  end

  def modify_existing_contact
    display_all_contacts
    puts "---------------------------------"
    puts "Please enter the number from above list for the contact you would like to modify: "
    id = gets.chomp.to_i
    contact_to_be_modified = Contact.find(id)
    puts "Which attribute would you like to modify?"
    dispaly_attributes
    attribute_to_be_modified = gets.chomp.to_i
    puts "What is the new #{@contact_attritbutes[attribute_to_be_modified-1]}"
    new_attribute = gets.chomp
    contact_to_be_modified.update( @contact_attritbutes[attribute_to_be_modified-1], new_attribute )
  end

  def delete_contact
    display_all_contacts
    puts "Please enter the number from above list for the contact you would like to delete: "
    id = gets.chomp.to_i
    Contact.delete( Contact.find(id) )
  end

  def dispaly_attributes
    @contact_attritbutes.each {|att| puts "[#{@contact_attritbutes.index(att) +1 }]. #{att}"}
    puts 'Enter a numer: '
  end

  def display_all_contacts
    id_list = Contact.all.map(&:id)
    full_name_list = Contact.all.map(&:full_name)
    l = 0
    while l < id_list.length
      puts "#{id_list[l]}. #{full_name_list[l]}"
      l += 1
    end

  end

  def search_by_attribute
    puts "Which attribute would you like to search by?"
    dispaly_attributes
    attribute = gets.chomp.to_i
    puts "Please enter the #{@contact_attritbutes[attribute -1]}: "
    attribute_value = gets.chomp
    contact_list = Contact.find_by( @contact_attritbutes[attribute -1], attribute_value )
    contact_list.each do |contact|
    puts "Name: #{contact_list.full_name}"
    puts "Email: #{contact_list.email}"
    puts "Note: #{contact_list.note}"
    puts "---------------------------------"
    end
  end


end
