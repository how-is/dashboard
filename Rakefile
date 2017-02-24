# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

task :generate_reports => [:environment] do
  Repo.names.each do |repo|
    report = HowIs.new(repo).to_json
    Report.create(repo: repo, json: report)
    sleep 10 * 60 # Wait 10 minutes between repository.
  end
end
