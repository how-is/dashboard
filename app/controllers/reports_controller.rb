class ReportsController < ApplicationController
  def index
    @repo = params[:repo_id]
    @reports = Report.where(repo: @repo).order("created_at ASC")
  end

  def show
    @report = Report.find(params[:id])
  end
end
