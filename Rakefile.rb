task :default do 
	puts '------------ Start \'Rake\''
end

task core: :default do 
	puts '------------ Initializing basic structure...'
	mkdir 'Folder'
end

task construct: :core do 
	cd 'Folder'
	basic_struct = %w(index.html style.css script.js)
	basic_struct.each do |task|
		touch "#{task}"
	end
end

task close: :construct do 
	puts '------------ Complete'
end