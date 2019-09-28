class Patient
  attr_accessor :name, :appointment, :doctor
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

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end

end
