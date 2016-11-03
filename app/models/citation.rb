class Citation < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :title, :link
end
