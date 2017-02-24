class GenerateReportWorker
  include Sidekiq::Worker

  def perform(repo_name)
    report = HowIs.new(repo_name).to_json
    Report.create(repo: repo_name, json: report)
  end
end
