class Person
  attr_accessor :partner, :name
  
  class PartnerError < StandardError
  end
  
  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
  end
  
  def 

end

#beyonce = Person.new("Beyonce")
#beyonce.get_married("Jay-Z")
#puts beyonce.name




