class Doctor

  @@all = []
  
  def self.all
    @@all
  end


  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select { |apt| apt.doctor == self}
  end

  def new_appointment (patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.collect { |apt| apt.patient if apt.doctor == self}
  end
end