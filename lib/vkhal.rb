# frozen_string_literal: true

require 'optionparser'

require 'icalendar'

require 'vkhal/cli'
require 'vkhal/khal_service'
require 'vkhal/presenter'

module Vkhal
  class Error < StandardError; end
end
