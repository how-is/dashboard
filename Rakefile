# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

namespace :reports do
  desc "Generate reports for all repos immediately"
  task :generate => [:environment] do
    Repo.names.each do |repo|
      GenerateReportWorker.perform(repo)
    end
  end

  desc "Generate reports for all repos in the background, one per 5 minutes"
  task :queue => [:environment] do
    wait_min = 0
    Repo.names.each do |repo|
      GenerateReportWorker.perform_in(wait_min.minutes, repo)
      wait_min += 5
    end
  end
end
