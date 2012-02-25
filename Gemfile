source 'https://rubygems.org'

group :development do
  gem 'shotgun', '~> 0.9.0'
  gem 'heroku', '~> 2.20.0'
end

group :production do
  gem 'unicorn', '~> 4.2.0'
  gem 'rack-cache', '~> 1.1.0'
end

# For now, we're going to be using the development versions of
# schnitzelstyle and schnitzelpress. I told you you were about
# to live dangerously!
#
gem 'schnitzelstyle',  git: 'git://github.com/hmans/schnitzelstyle.git'
gem 'schnitzelpress',      git: 'git://github.com/hmans/schnitzelpress.git'

# If you'd prefer to use the officially released versions,
# use these instead:
#
# gem 'schnitzelstyle', :path => '../schnitzelstyle'
# gem 'schnitzelpress',     :path => '../schnitzelpress'
