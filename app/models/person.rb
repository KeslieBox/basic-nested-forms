class Person < ActiveRecord::Base
  has_many :addresses
  #this writes a sort of setter method: addresses_attributes= , 
  #which then when we called new_person.save it created both the 
  #Person object and the Address objects passed in.
  accepts_nested_attributes_for :addresses

end
