module ApplicationHelper

	def login_helper style = ''

		if current_user.is_a?(GuestUser)
			(link_to 'Register', new_user_registration_path, class: style) + 
			(link_to 'Login', new_user_session_path, class: style)
			
		else
			link_to 'Logout', destroy_user_session_path, method: :delete, class: style

		end
	end

	def source_helper(layout)
		 if session[:source] 
	      content_tag(:p, "thank you for visiting #{session[:source]} and you are on #{layout} layout", class: "source-greeting")
	     end 
	end

	def copyright_generator
		MetouoleViewTool::Renderer.copyright 'SOMDA Metouole Mwinbé', 'All rights reserved'
	end
end
