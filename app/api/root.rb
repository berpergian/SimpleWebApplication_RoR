require 'raven/intergrations/rack'

module Twitter
  class Root < Grape::API
    use Raven::Rack
    mount V1::Root
  end
end
