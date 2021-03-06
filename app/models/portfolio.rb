class Portfolio < ApplicationRecord
	has_many :technologies

	accepts_nested_attributes_for :technologies, reject_if: :all_blank, allow_destroy: true
												
	validates_presence_of :title, :subtitle, :body

	mount_uploader :thumb_image, PortfolioUploader
	mount_uploader :main_image, PortfolioUploader

	def self.angular
		where(subtitle: "Angular")
	end

	def self.by_position
		order("position ASC")
	end

	scope :ruby_on_rails_portfolio, -> { where(subtitle: "Ruby On Rails") }

	
end

