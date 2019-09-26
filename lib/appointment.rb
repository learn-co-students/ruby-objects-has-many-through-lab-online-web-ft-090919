class Appointment
    attr_accessor :patient, :date, :doctor
    
    @@all = []

    def initialize(patient, doctor, date)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end
    
end