class Resume
  def self.call(env)
    path = env['REQUEST_PATH']
		case path
		when '/'  
		  RootController.new(env).index
		else
			body = '
		  <html>
		    <body>
		      <h1>Not found</h1>
		    </body>
		  </html>'
			[404, {}, [body]]
		end
  end
end