module Vkhal
  class Presenter
    def initialize(events:)
      @events = events
    end

    def display
      @events.each do |event|
        puts <<~EVTEND
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

    def format_datetime(dt)
      dt.strftime("%A, %d %b %Y %l:%M %p")
    end
  end
end
