# frozen_string_literal: true

module Vkhal
  # Sends events to Khal
  class KhalService
    def initialize(file:)
      @file = file
    end

    def import!
      exec "khal import #{@file}"
    end
  end
end
