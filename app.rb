# encoding: UTF-8
require 'rubygems'
require 'bundler'
Bundler.require

Schnitzelpress.mongo_uri = case Schnitzelpress.env
  when "development" then 'mongodb://localhost/schnitzelpress-org'
  when "production"  then ENV['MONGOLAB_URI'] || ENV['MONGOHQ_URL'] || ENV['MONGO_URL']
end
