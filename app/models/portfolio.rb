class Portfolio < ApplicationRecord
	validates_presence_of :title, :subtitle, :body, :main_image
end
