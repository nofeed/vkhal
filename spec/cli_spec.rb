# frozen_string_literal: true

RSpec.describe Vkhal::CLI do
  context 'options_parse' do
    let(:events) { %i[event_1 event_2] }

    it 'parses -k/--khal correctly' do
      stub_const('ARGV', %w[-k ./test.ics])
      service = double(Vkhal::KhalService)
      expect(Vkhal::KhalService).to receive(
        :new
      ).with(file: './test.ics').and_return(service)
      expect(service).to receive(:import!)
      described_class.new.perform
    end

    it 'parses -s/--show correctly' do
      stub_const('ARGV', %w[-s ./test.ics])
      presenter = double(Vkhal::Presenter)
      expect(File).to receive(:open)
      expect(Icalendar::Event).to receive(:parse).and_return(events)
      expect(Vkhal::Presenter).to receive(
        :new
      ).with(events: events).and_return(presenter)
      expect(presenter).to receive(:display)
      described_class.new.perform
    end
  end
end
