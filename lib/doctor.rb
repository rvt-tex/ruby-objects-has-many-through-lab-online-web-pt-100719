class Doctor

 attr_accessor :name
 
  @@all = []
 
  def initialize
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment.new(patient, self, date)
  end
  
def appointments
  appointment.all.select do |appointment|
    appointment.Doctor == self 
  end
end

def patients
  appointment.all.collect do |appointment|
    appointment.patient == self 
  end
end

end
