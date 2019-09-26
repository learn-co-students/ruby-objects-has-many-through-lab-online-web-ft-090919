
class Patient
    attr_reader :name, :doctor
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def new_appointment(doctor, date)
      Appointment.new(self, doctor, date)
    end
  
    def self.all
      @@all
    end
  
    def appointments
        Appointment.all.select { |appointment| appointment.patient}
    end
  
    def doctors
      appointments.map { |appointment| appointment.doctor}
    end
end