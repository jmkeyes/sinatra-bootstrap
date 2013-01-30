#!/usr/bin/env ruby

# Load all non-gem libraries included with the application.
Dir['lib/**/*.rb'].each { |file| require file }

configure do
  helpers Sinatra::Partial

  set :app_file, __FILE__
  set :root, File.dirname(__FILE__)
  set :public_folder, 'public'

  set :haml, :format => :html5
  set :partial_template_engine, :haml

  DataMapper.setup(:default, ENV['DATABASE_URI'] || "sqlite3://#{settings.root}/#{settings.environment}.db")
  DataMapper.finalize
end

get '/' do
  haml :index
end
