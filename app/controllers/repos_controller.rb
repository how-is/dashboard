class ReposController < ApplicationController
  def index
    @repos = ENV['REPOSITORIES'].split(',').sort
  end
end
