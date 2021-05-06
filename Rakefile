require 'rake'
require 'parallel'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:first) do |task|
  ENV['CONFIG_NAME'] ||= "first"
#   task.cucumber_opts = ['--format=pretty', '--require features/support', '--require features/step_definitions']
  task.cucumber_opts = ['--format html', '--require features/support', '--require features/step_definitions','--out features_report.html']
end

task :default => :first


task :test do |t, args|
  Rake::Task["first"].invoke
end
