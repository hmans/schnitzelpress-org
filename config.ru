$stdout.sync = true
require File.expand_path("../app.rb", __FILE__)

# Run the app, with support for files in ./public/
#
run Schnitzelpress::App.with_local_files
