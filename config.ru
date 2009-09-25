require 'rubygems'
require '/home/cyx/.gem/ruby/1.8/gems/sinatra-0.9.4/lib/sinatra'

Sinatra::Application.default_options.merge!(
  :views => File.join(File.dirname(__FILE__), 'views'),
  :run => false,
  :env => ENV['RACK_ENV']
)

require 'main'
run Sinatra.application
