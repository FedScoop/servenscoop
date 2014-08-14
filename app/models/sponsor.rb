class Sponsor < ActiveRecord::Base
	has_many :event_sponsor

  	def htmlize
    	out = "<div class='sponsor_token col-xs-3'>"
    	out << "<img src='#{self.logo_url}', "
    	out << "style='left:#{self.place_token_left}px; top:#{self.place_token_top}px;"
    	out << "width:#{self.logo_width}px; height:#{self.logo_height}px;' />"
    	out << "</div>"
    	return out
  	end
end
