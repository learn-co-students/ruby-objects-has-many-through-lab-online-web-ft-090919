=begin class Patient 
  attr_reader :name
  
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  
  def self.all 
    @@all
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end 
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end 
  end 
  
  
end 

=end

class Patient
  
  attr_accessor :name
                     
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end
  
  def doctors
    appointments.map {|appt| appt.date}          #notice this says appt.date instead of appt.doctor. I think something got placed out of position somewher
    end
  
end