class Pin < ActiveRecord::Base
	
	belongs_to :user
	has_attached_file :image, styles: { medium: "320x240>"}

	validates :description, presence: true
	validates :user_id, presence: true
	validates :image, presence: true

end
