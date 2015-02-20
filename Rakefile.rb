namespace :basic_structure do
  
  desc 'start message'
	task :start do 
		puts '   Starting \'Rake\''
	end

  desc 'progress message'
	task :begin do 
		puts '   Initializing basic structure ...'
		mkdir 'Folder'
	end
  
  desc 'construct basic file structure'
	task :construct do 
		cd 'Folder'
		mkdir 'img'
		basic_struct = %w(index.html style.css script.js)
		basic_struct.each do |task|
			touch "#{task}"
		end
	end
  
  desc 'launch tasks sequence'
	task close: [:start, :begin, :construct] do 
		puts '   Complete!'
	end
end

task default: 'basic_structure:start'
