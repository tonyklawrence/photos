class Slide < ActiveRecord::Base
  belongs_to :slideshow
  belongs_to :photo
  
  acts_as_list :scope => "slideshow_id"
end
