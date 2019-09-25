class Patient
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    new_appt = Appointment.new(date, self, doctor)
  end 
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end 
  
  def self.all
    @@all
  end 
  
  def doctors
    appointments.collect {|appt| appt.doctor}
  end 
  
end 