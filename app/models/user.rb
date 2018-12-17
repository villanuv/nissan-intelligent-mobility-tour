class User < ActiveRecord::Base
	# validates :email, confirmation: true
	# validates :email_confirmation, presence: true

	attr_accessor :email_confirmation
end
