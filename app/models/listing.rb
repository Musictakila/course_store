class Listing < ActiveRecord::Base
	#paperclip
	has_attached_file :image, :styles => { medium: "200x>", thumb: "100x100>" }, :default_url => "default.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates :image, attachment_presence: true #image isn't blank in Create action



	validates :name, :description, :price, presence: true
	validates :price, numericality: { greater_than: 0 } #proce must > 0


	#association
	belongs_to :user

end #Listing
