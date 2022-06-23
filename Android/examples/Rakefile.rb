require 'rake'
require 'cucumber/rake/task'


Cucumber::Rake::Task.new(:first) do |task|
  ENV['CONFIG_NAME'] ||= "first"
  task.cucumber_opts = ['--format=pretty', '--require First_test/', 'First_test/']
end

task :default => :first



task :test do |t, args|
  Rake::Task["first"].invoke
  
end

