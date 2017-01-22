class ReposController < ApplicationController
  def index
    @repos = Report.pluck(:repo).sort
  end
end
