class Pet < ActiveRecord::Base
	belongs_to :owner
	has_many :appointments
	
	validates_presence_of :name, :born_at
	validates :observations, length: {maximum: 200}

	def sum_of_appointments
		self.appointments.sum(:amount)
	end

	def self.types_of_pets
		["Anfibio", "Ave", "Gato", "Perro", "Pez", "Reptil", "Roedor"]
	end
end
