class Patient
  
   attr_accessor :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
 
  def appointments
    appointment.all.select do |appointment|
      appointment.Patient == self
    end
  end

 
  def new_appointment(doctor, date)
    appointment.new(self, doctor, date)
  end

 
end
