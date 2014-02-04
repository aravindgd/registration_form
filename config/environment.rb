# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SboaRegisterationProject::Application.initialize!
require 'rubygems'
require 'pdf/writer'

Mime::Type.register "application/pdf", :pdf