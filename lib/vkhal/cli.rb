# frozen_string_literal: true

module Vkhal
  # Handles arguments for the vkhal CLI utility
  class CLI
    def initialize
      @options = options_parse
    end

    def perform
      if @options[:khal]
        ks = KhalService.new(file: @options[:khal])
        ks.import!
      elsif @options[:show]
        p = Presenter.new(events: events_parse(@options[:show]))
        p.display
      end
    end

    private

    def options_parse
      options = {}
      OptionParser.new do |opts|
        opts.banner = 'Usage: vkhal [options]'
        opts.on('-s', '--show FILE', String, 'Show ical file FILE')
        opts.on('-k', '--khal FILE', String, 'Insert ical FILE into Khal')
      end.parse!(into: options)
      options
    end

    def events_parse(file)
      events_file = File.open(file)
      Icalendar::Event.parse(events_file)
    end
  end
end
