class Doctor
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |a|
            a.doctor == self
        end
    end

    def patients
        appointments.collect do |a|
            a.patient
        end
    end

    def self.all
        @@all
    end
end
