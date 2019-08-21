# frozen_string_literal: true

RSpec.describe Vkhal::KhalService do
  let(:filepath) do
    File.join(
      File.dirname(__FILE__), 'fixtures', 'two_day_events.ics'
    )
  end
  let(:service) { described_class.new(file: filepath) }

  it 'calls `khal` binary properly' do
    expect(service).to receive(:exec).with("khal import #{filepath}")
    service.import!
  end
end
