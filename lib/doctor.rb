class Doctor 

  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  # Creates appt instance w/ patient, date 
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end 
  
  def appointments 
    Appointment.all.select { |appt| appt.doctor == self }
  end 
  
  def patients 
    appointments.collect { |appt| appt.patient }
  end 
  
end 


