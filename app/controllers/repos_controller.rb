class ReposController < ApplicationController
  def index
    @repos = Report.pluck(:repo).sort
  end

  def show
    redirect_to repo_reports_path(params[:id])
  end
end
