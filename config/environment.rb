# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SboaRegisterationProject::Application.initialize!
Mime::Type.register "application/pdf", :pdf

