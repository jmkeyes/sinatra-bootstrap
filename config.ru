#!/usr/bin/env ruby

# Bring in bundler to handle dependencies.
require 'bundler'
Bundler.require

# Load the application as normal.
require './application'
run Sinatra::Application
