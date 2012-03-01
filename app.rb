# encoding: UTF-8
require 'rubygems'
require 'bundler'
Bundler.require

Schnitzelpress.mongo_uri = case Schnitzelpress.env
  when "development" then 'mongodb://localhost/schnitzelpress-org'
  when "production"  then ENV['MONGOLAB_URI'] || ENV['MONGOHQ_URL'] || ENV['MONGO_URL']
end

class App < Schnitzelpress::App
  configure do
    set :blog_title, "Schnitzelpress"
    set :blog_description, "A lean, mean blogging machine for hackers and fools."
    set :author_name, "Hendrik Mans"
    set :footer, "powered by [Schnitzelpress #{Schnitzelpress::VERSION}](http://schnitzelpress.org)"
    set :administrator, {
      :provider => "browser_id",
      :uid      => "hendrik@mans.de"
    }

    # The following are optional:
    #
    # set :disqus_name, "..."
    # set :google_analytics_id, "..."
    set :gauges_id, "4f40682a844d524b41000068"
    set :twitter_id, 'schnitzelpress'
    # set :read_more, "Read ALL the things"
  end
end
