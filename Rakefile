require "bundler"
Bundler.setup

require "rspec/core/rake_task"
Rspec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("spaceable.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["spaceable.gemspec"] do
  system "gem build spaceable.gemspec"
  system "gem install spaceable-#{Spaceable::VERSION}.gem"
end
