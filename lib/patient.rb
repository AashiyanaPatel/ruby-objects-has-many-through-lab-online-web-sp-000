class Patient

  attr_reader :name
  
  @all = []

  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
    end
  end

  def doctors
    Appointment.all.map {|appointment| appointment.doctor}
  end
  
   def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
    end
  end
end
