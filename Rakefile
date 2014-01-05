require 'rspec/core/rake_task'
require File.dirname(__FILE__) + '/lib/refined_colors/version'

task :build => :test do
  system "gem build refined_colors.gemspec"
end

task :release => :build do
  # tag and push
  system "git tag v#{RefinedColors::VERSION}"
  system "git push origin --tags"
  # push the gem
  system "gem push refined_colors-#{RefinedColors::VERSION}.gem"
end

RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.fail_on_error = true # be explicit
end
