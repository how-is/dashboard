require 'repo'

Repo.names = ENV.fetch('REPOSITORIES', 'rubygems/rubygems,bundler/bundler').split(',').sort