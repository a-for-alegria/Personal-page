$: << '.'

require 'models/resume'
require 'controllers/root_controller'
require 'haml'
require 'sass/plugin/rack'

#--------------Setup Sass/Scsss--------------#

Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:cache] = false
Sass::Plugin.options[:template_location] = 'public/stylesheets'
use Sass::Plugin::Rack

#--------------Set static assets directory--------------#

use Rack::Static,
  :urls => ["/images", "/js", "/stylesheets"],
  :root => "public"

map '/' do
  run Resume
end

