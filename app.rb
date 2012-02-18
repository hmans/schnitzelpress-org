# encoding: UTF-8
require 'rubygems'
require 'bundler'
Bundler.require

SchnitzelPress.mongo_uri =
    ENV['MONGOLAB_URI'] ||
    ENV['MONGOHQ_URL'] ||
    ENV['MONGO_URL'] ||
    'mongodb://localhost/schnitzelpress-org'  # used for local development

class App < SchnitzelPress::App
  configure do
    set :blog_title, "schnitzelpress-org"
    set :blog_description, "A new blog powered by SchnitzelPress."
    set :author_name, "Your Name"
    set :footer, "powered by [SchnitzelPress](http://schnitzelpress.org)"
    set :administrator, "browser_id:hendrik@mans.de"

    # The following are optional:
    #
    # set :disqus_name, "..."
    # set :google_analytics_id, "..."
    # set :gauges_id, "..."
    # set :twitter_id, '...'
    # set :read_more, "Read ALL the things"
  end
end
