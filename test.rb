require_relative "contact"

Contact.create("fsf0","sdfsad0","fadf@afdf.com0","blah0")
Contact.create("fsf1","sdfsad1","fadf@afdf.com1","blah1")
Contact.create("fsf2","sdfsad2","fadf@afdf.com2","blah2")
Contact.create("fsf3","sdfsad3","fadf@afdf.com3","blah3")
Contact.create("fsf4","sdfsad4","fadf@afdf.com4","blah4")

puts Contact.all[0].email
puts "---------------------------------------------"
Contact.all[0].update("email","hehe@hehe.com")
puts Contact.all[0].email
Contact.all[1].update("first_name","haha")
puts Contact.all[1].first_name
Contact.all[2].update("last_name","1111111111")
puts Contact.all[2].last_name
Contact.all[3].update("note","2222")
puts Contact.all[3].note
puts "---------------------------------------------"
puts Contact.all[0].email
puts Contact.all[0].id
puts "---------------------------------------------"
puts Contact.find("4").id
puts Contact.find("3").note
puts "---------------------------------------------"
puts Contact.find_by("last_name","sdfsad4").first_name
puts Contact.find_by("email","fadf@afdf.com3").full_name
puts Contact.find_by("note","blah0").full_name
puts Contact.find_by("first_name","fsf1").full_name
puts "Contacts number #{Contact.all.length}"
Contact.all[2].delete(2)
puts "Contacts number #{Contact.all.length}"
Contact.delete_all
puts "Contacts number #{Contact.all.length}"
