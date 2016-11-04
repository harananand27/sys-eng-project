class Citation < ActiveRecord::Base
	belongs_to :user

# Must include title & link, notes optional      
	validates_presence_of :title, :link
end
