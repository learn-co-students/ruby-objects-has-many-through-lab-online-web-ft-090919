class Patient

  @@all = []
  
  def self.all
    @@all
  end


  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment (doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |apt| apt.patient == self}
  end

  def doctors
    Appointment.all.collect { |apt| apt.doctor if apt.patient == self}
  end

end