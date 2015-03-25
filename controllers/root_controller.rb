class RootController
  
  attr_accessor :env

  def initialize(env)
    self.env = env
  end

  def index
    body = render_with_layout('public/views/index.html.haml')
	  [200, {}, [body]]
  end

  def projects
    body = render_with_layout('public/views/projects.html.haml')
    [200, {}, [body]]
  end

  def not_found
    body = render_with_layout('public/views/404.html.haml')
    [404, {}, [body]]
  end

  private

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
end