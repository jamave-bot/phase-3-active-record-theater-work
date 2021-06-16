#run rake db:seed after, then rake console to play around

#destroys all the old data
Role.destroy_all
Audition.destroy_all

#repopulates
danny = Role.create(character_name: "Danny")
jon = Role.create(character_name: "Jon")
ned = Role.create(character_name: "Ned")

a = Audition.create(actor: "A", location:"NY", phone: 123, hired: false, role_id: danny.id) 
b = Audition.create(actor: "B", location:"GA", phone: 456, hired: false, role: jon) #as long as we have the belongs_to macro written out, we can write it like this 
c = Audition.create(actor: "C", location:"NV", phone: 789, hired: true, role_id: danny.id) 
d = Audition.create(actor: "D", location:"NV", phone: 101, hired: true, role_id: danny.id) 

