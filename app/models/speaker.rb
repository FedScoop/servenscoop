class Speaker < ActiveRecord::Base
  	has_many :event_speaker
    belongs_to :event

  def htmlize
    out = "<div class='speaker_token col-xs-3'>"
    out << "<img src='#{self.photo_url}' />"
    out << "<p>#{self.first_name} #{self.last_name}</p>"
    out << "<p>#{self.job_title}, #{self.employer}</p>"
    out << "</div>"
    return out
  end

	private
	    #ensure that there are no line items referencing this speaker
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
end
