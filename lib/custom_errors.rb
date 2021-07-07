class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.class != Person
      begin
       raise PartnerError
      rescue PartnerError => error
       puts error.message
     end
    else
      self.partner = person
      person.partner = self
    end
  end

  class PartnerError < StandardError
    def message
      "You must enter an instance of a class not a string."
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
