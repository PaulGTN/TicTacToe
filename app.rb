$:.unshift File.expand_path("../lib/app/", __FILE__)

require 'application'

Application.new.perform