class RootController
  def index
    body = render_with_layout('public/views/index.html.haml')
	  [404, {}, [body]]
  end

  def render(template_path)
    template = File.open(template_path, "r").read
    Haml::Engine.new(template).render
  end

  def render_with_layout(template_path)
    layout = File.open('public/views/layout.html.haml', "r").read
    Haml::Engine.new(layout).render do 
      render(template_path)
    end
  end

  attr_accessor :env

  def initialize(env)
  	self.env = env
  end
end