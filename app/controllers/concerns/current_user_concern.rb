module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
	end

	def guest_user
		OpenStruct.new(name: "John Mensah", first_name: "John", last_name: "Mensah", email: "john@mensah.com")
	end

end