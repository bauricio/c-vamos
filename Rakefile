require "cucumber/rake/task"
task :default => [:test]
Cucumber::Rake::Task.new(:test) do |task|
    task.cucumber_opts = ["-t","~@pending","features --format pretty"]
end

Cucumber::Rake::Task.new(:wip) do |task|
    task.cucumber_opts = ["-t","@wip","features"]
end
