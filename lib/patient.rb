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
  
  # Creates appt instance w/ doctor, date
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end 
  
  def appointments 
    Appointment.all.select { |appt| appt.patient == self }
  end 
  
  def doctors 
    appointments.collect { |appt| appt.doctor }
  end 
  
end 


