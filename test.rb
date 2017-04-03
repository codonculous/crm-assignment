require_relative "contact"

Contact.create("fsf","sdfsad","fadf@afdf.com","blah")
puts Contact.all[0].email
Contact.all[0].update("email","hehe@hehe.com")
puts Contact.all[0].email
puts Contact.all[0].id
