module PageTitle
	extend ActiveSupport::Concern
	
	included do
		before_action :title_page
	end

	def title_page
		@title_page = "DevcampPortfolio | My portfolio website"
		@seo_keywords = "SOMDA Metouole Mwinbe Yves Ghislain"
	end

end