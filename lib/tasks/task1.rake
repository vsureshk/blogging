
task :task_name, [:arg_1] => [:pre_1, :pre_2] do |t, args|
  # You can use args from here
end

task :pre_1 do
	
end

task :pre_2 do
	
end

namespace :db do
  desc "This task does nothing"
  task :nothing do
    # Seriously, nothing
  end
end