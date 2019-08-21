# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vkhal/version'

Gem::Specification.new do |spec|
  spec.name          = 'vkhal'
  spec.version       = Vkhal::VERSION
  spec.authors       = ['Nicholas Wieland']
  spec.email         = ['ngw@nofeed.org']

  spec.summary       = 'Display vcalendar invites and send them to Khal'
  spec.homepage      = 'https://github.com/nofeed/vkhal'
  spec.license       = 'Beerware'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/nofeed/vkhal'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.executables = `git ls-files -- bin/*`.split("\n").map do |f|
    File.basename(f)
  end
  spec.require_paths = ['lib']

  spec.add_dependency             'icalendar'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rubocop', '~> 0.70.0', '>= 0.70'
end
