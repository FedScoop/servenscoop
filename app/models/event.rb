class Event < ActiveRecord::Base
	has_many :event_speaker
	has_many :speaker
end
