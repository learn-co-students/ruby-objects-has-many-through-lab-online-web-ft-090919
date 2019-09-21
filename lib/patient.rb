class Patient
    attr_accessor :name 

    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |a|
            a.patient == self
        end
    end
    def doctors
        appointments.collect do |a|
            a.doctor
        end
    end


    def self.all
        @@all
    end
end