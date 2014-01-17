# -*- encoding: utf-8 -*-
require File.expand_path('../lib/soap/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name    = 'soap'
  gem.version = Soap::VERSION
  gem.date    = Date.today.to_s

  gem.summary = 'A profanity detector for random strings'
  gem.description = 'A profanity detector for random strings'

  gem.authors  = ['Jason Nochlin']
  gem.email    = 'hundredwatt@gmail.com'
  gem.homepage = 'http://github.com/hundredwatt/soap'

  gem.add_development_dependency('bundler')
  gem.add_development_dependency('active_support')

  # ensure the gem is built out of versioned files
  gem.files = Dir['Rakefile', '{lib,test}/**/*', 'README*', 'LICENSE*'] & (`git ls-files`.split)
end
