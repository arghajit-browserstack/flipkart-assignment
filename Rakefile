require 'rake'
require 'parallel'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:first) do |task|
  ENV['CONFIG_NAME'] ||= "first"
  task.cucumber_opts = ['--format=html', '--require features/support', '--require features/step_definitions', '--out report.html']
end

task :default => :first


task :test do |t, args|
  Rake::Task["first"].invoke
end
