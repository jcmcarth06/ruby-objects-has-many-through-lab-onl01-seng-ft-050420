class Doctor
  attr_accessor :name, :appointments

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

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
    
  end


end
