# Load the rails application
require File.expand_path('../application', __FILE__)
config.gem "proj4rb", :lib => "proj4"
# Initialize the rails application
BamftServer::Application.initialize!
