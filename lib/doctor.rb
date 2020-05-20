class Doctor
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.collect do |appointment|
      if appointment.doctor == self
        true
      else
        false
      end
    end
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

end
