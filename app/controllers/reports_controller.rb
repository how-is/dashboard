class ReportsController < ApplicationController
  def index
    @repo = params[:repo_id]
    @reports = Report.where(repo: @repo).order("created_at ASC")
  end

  def show
    @repo = params[:repo_id]
    @date = params[:date]
    @report = Report.repo(@repo).on_date(@date).first
    @html = HowIs.generate_report(repository: @repo,
                                  from: ???)
  end
end
