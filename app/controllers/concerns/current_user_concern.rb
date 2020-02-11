module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
	end

	def guest_user
		guest = GuestUser.new
		guest.name = "John Mensah"
		guest.first_name = "John"
		guest.last_name = "Mensah"
		guest.email = "john@mensah.com"
		guest
	end

end