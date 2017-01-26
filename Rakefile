# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

task :generate_reports => [:environment] do
  ENV['REPOSITORIES'].split(',').each do |repo|
    report = HowIs.generate_report(repository: repo, format: :json)
    Report.create(repo: repo, json: report)
  end
end
