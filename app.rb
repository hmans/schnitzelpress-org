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
    set :blog_title, "SchnitzelPress"
    set :blog_description, "A lean, mean blogging machine for hackers and fools."
    set :author_name, "Hendrik Mans"
    set :footer, "powered by [SchnitzelPress](http://schnitzelpress.org)"
    set :administrator, "browser_id:hendrik@mans.de"

    # The following are optional:
    #
    # set :disqus_name, "..."
    # set :google_analytics_id, "..."
    set :gauges_id, "4f40682a844d524b41000068"
    set :twitter_id, 'schnitzelpress'
    # set :read_more, "Read ALL the things"
  end
end
