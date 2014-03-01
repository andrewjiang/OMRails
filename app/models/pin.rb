class Pin < ActiveRecord::Base
	
	belongs_to :user
	has_attached_file :image, styles: { medium: "320x240>"}

	validates :description, presence: true
	validates :user_id, presence: true
	validates :image, presence: true

	def image_remote_url=(url_value)
		self.image = URI.parse(url_value) unless url_value.blank?
		
		super 
	end

end
