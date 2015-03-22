$: << '.'

require 'models/resume'
require 'controllers/root_controller'
require 'haml'

use Rack::Static,
  :urls => ["/js", "/css"],
  :root => "public"

map '/' do
  run Resume
end

