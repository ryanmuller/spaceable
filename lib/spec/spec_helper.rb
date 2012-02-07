require "bundler"
Bundler.setup

require "rspec"
require "spaceable"
#require "support/matchers"

Rspec.configure do |config|
  #config.include NewGem::Spec::Matchers
end
