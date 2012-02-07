# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rspec"
require "spaceable"
require "rails/test_help"

Rails.backtrace_cleaner.remove_silencers!

