module Vkhal
  class KhalService
    def initialize(file:)
      @file = file
    end

    def import!
      exec "khal import #{@file}"
    end
  end
end
