class ReposController < ApplicationController
  def index
    @repos = ENV.fetch('REPOSITORIES', 'rubygems/rubygems,bundler/bundler').split(',').sort
  end
end
