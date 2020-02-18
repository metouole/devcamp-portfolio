class Portfolio < ApplicationRecord
	has_many :technologies

	accepts_nested_attributes_for :technologies
	include Placeholder
	validates_presence_of :title, :subtitle, :body, :main_image

	def self.angular
		where(subtitle: "Angular")
	end

	def self.by_position
		order("position ASC")
	end

	scope :ruby_on_rails_portfolio, -> { where(subtitle: "Ruby On Rails") }

	after_initialize :set_default

	def set_default
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '300', width: '150')
	end
end

