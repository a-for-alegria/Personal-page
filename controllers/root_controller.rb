class RootController
  def index
    body = render('Folder/index.html.haml')
	  [404, {}, [body]]
  end

  def render(template_path)
    template = File.open(template_path, "r").read
    Haml::Engine.new(template).render
  end

  attr_accessor :env

  def initialize(env)
  	self.env = env
  end
end