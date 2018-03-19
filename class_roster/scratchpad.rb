# READ DATA
User.find_by(accepts a hash, key - value pair) #=> returns 1 record
User.find(2) #=> tales integer as a parameter, returns 1 record
User.where(name: “Fred”) #=> takes hash an an argumet and returns 0 or more: a list of results
User.all #=>returns all users

User.find(1)
User.find_by(name: ‘Fred’)
User.first
User.last
User.take
User.where(name: ‘Fred’)
User.all

#UPDATE DATAs
User.find(2).update(email: “barney@flinstones.co”)
User.update(2, email: “barney@flintstones.co”)


#DELETE DATA
User.last.destroy()

#--------------------------------------------------------
#class aka Model(Rails)
# Create	[.new() & .save(), .create()]
# Read  	[.find(), .find_by(), .where(), .all()]
# Update	[.find() & .save(), .update()]
# Delete	[.destroy()]
has_many & belongs_to
methods that take one argument: a symbol representing the other model
add them to the top of the model’s rb file
Enable us to “travel across” that association. For example:
Course.last.users
=> all users that belong to that course


use special startig words stats add, create for migration
change is a method each migration should have
