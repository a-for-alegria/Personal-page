class Resume
  def self.call(env)
    path = env['REQUEST_PATH']
		case path
		when '/'  
		  RootController.new(env).index
		when '/projects'
		  RootController.new(env).projects
		else
			RootController.new(env).not_found
		end
  end
end