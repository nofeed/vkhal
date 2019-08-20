RSpec.describe Vkhal::Presenter do
  let(:events) do
    events_file = File.open(File.join(
      File.dirname(__FILE__), 'fixtures', 'two_day_events.ics'))
    Icalendar::Event.parse(events_file)
  end
  let(:presenter) { described_class.new(events: events)}

  it "presents events properly" do
    display = <<~EVTEND
    Summary:          Monday
    Location:         
    Organizer:        
    Description:      
    Start:            Monday, 14 Jul 2014 12:00 AM
    End:              Tuesday, 15 Jul 2014 12:00 AM

    Summary:          Sunday
    Location:         
    Organizer:        
    Description:      
    Start:            Sunday, 13 Jul 2014 12:00 AM
    End:              Monday, 14 Jul 2014 12:00 AM

    EVTEND
    expect { presenter.display }.to output(display).to_stdout
  end
end
