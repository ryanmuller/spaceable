# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require "bundler"
Bundler.setup

require "rspec"
require "spaceable"
#require "support/matchers"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)

Rails.backtrace_cleaner.remove_silencers!

Rspec.configure do |config|
  #config.include NewGem::Spec::Matchers
end

