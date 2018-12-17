class User < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true

	validates :street_address, presence: true
	validates :city, presence: true
	validates :state_abbr, presence: true
	validates :zip_code, presence: true
	validates :email, confirmation: true

	validates :purchase_period, presence: true
	validates :vehicles, presence: true
	validates :consider_nissan, presence: true
	validates :opinion, presence: true
	validates :participation, presence: true
	validates :agree_to_terms, presence: true

	attr_accessor :email_confirmation

	before_save do
		self.vehicles.gsub!(/[\[\]\"]/, "")
		self.vehicles = (self.vehicles.split(", ") - ["0"]).join(", ")
	end

end
