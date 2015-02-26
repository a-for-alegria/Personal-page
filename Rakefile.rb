namespace :frame do

  desc 'Create basic folder structure'
	task :begin do 
		puts '<========== Initializing basic structure ==========>'
		directories = %w(views assets controllers models)
		directories.each do |dir|
			mkdir "#{dir}"
		end
		touch 'Gemfile'
	end
  
  desc 'construct views folder and add starter html file'
	task :construct_views do 
		puts '<========== Creating HTML template ==========>'
		cd 'views'
		views_struct = %w(index.html.haml)
		views_struct.each do |view|
			touch "#{view}"
		end
	end

	desc 'Construct stylesheet directory in assets folder'
	task :construct_assets_styles do 
		puts '<========== Add stylesheets ==========>'
		cd '..'
    cd 'assets'
    mkdir 'stylesheets'
	end

		desc 'Construct javascript directory in assets folder'
	task :construct_assets_js do 
		puts '<========== Add javascript folder ==========>'
    mkdir 'js'
	end

	desc 'Add stylesheet starter file'
	task :construct_styles do 
		puts '<========== Add CSS template ==========>'
		cd 'stylesheets'
    assets_struct = %w(main.css)
    assets_struct.each do |asset|
    	touch "#{asset}"
    end
  end
  
  desc 'launch tasks sequence'
	task start: [:begin, :construct_views, :construct_assets_styles, :construct_assets_js, :construct_styles] do 
		puts '<========== Complete! ==========>'
	end
end

task default: 'frame:start'


