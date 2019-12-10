class Portfolio < ApplicationRecord
	validates_presence_of :title, :subtitle, :body, :main_image

	def self.angular
		where(subtitle: "Angular")
	end

	scope :ruby_on_rails_portfolio, -> { where(subtitle: "Ruby On Rails") }

	after_initialize :set_default

	def set_default
		self.main_image ||= "https://via.placeholder.com/600x400"
		self.thumb_image ||= "https://via.placeholder.com/300x150"
	end
end

