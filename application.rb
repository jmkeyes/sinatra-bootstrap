#!/usr/bin/env ruby

configure do
  set :app_file, __FILE__
  set :root, File.dirname(__FILE__)
  set :public_folder, 'public'

  set :haml, :format => :html5
  set :partial_template_engine, :haml
end

get '/' do
  haml :index
end
