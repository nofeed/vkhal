# frozen_string_literal: true

module Vkhal
  # Wraps presentation logic for Icalendar events
  class Presenter
    def initialize(events:)
      @events = events
    end

    def display
      @events.each do |event|
        puts <<~EVTEND.gsub(/[ ]+\n/, "\n")
          Summary:          #{event.summary}
          Location:         #{event.location}
          Organizer:        #{event.organizer}
          Description:      #{event.description}
          Start:            #{format_datetime(event.dtstart)}
          End:              #{format_datetime(event.dtend)}

        EVTEND
      end
    end

    private

    def format_datetime(datetime)
      datetime.strftime('%A, %d %b %Y %l:%M %p')
    end
  end
end
