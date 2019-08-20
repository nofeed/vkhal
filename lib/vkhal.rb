require 'optionparser'

require 'icalendar'
require 'open3'

require 'vkhal/cli'
require 'vkhal/khal_service'
require 'vkhal/presenter'

module Vkhal
  VERSION = '0.1.1'
  class Error < StandardError; end
end
