class ReposController < ApplicationController
  def index
    @repos = Repo.names
  end
end
