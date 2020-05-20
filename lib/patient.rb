class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def patient
    Appointment.all.map do |patient|
      patient.appointment
    end
  end

  def self.all
    @@all
  end
end
