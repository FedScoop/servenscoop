module ApplicationHelper
	def list_speakers list_of_speakers
		out = "<div class='row'>"
		list_of_speakers.each do |speaker|
			speaker = Speaker.find(speaker)
 			out << speaker.htmlize
		end
		out << "</div>"
	end

	def list_sponsors list_of_sponsors
		out = "<div class='row'>"
		list_of_sponsors.each do |sponsor|
			sponsor = Sponsor.find(sponsor)
			out << sponsor.htmlize
		end
		out << "</div>"
	end
end
