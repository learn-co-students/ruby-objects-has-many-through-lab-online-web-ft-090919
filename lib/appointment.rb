class Appointment
    attr_accessor :patient, :date, :doctor
    
    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end
    
    def patient
        self.patient
    end

end