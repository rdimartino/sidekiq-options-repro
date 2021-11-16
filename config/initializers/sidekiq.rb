Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis' }
  Sidekiq.schedule = YAML.load_file 'config/sidekiq-scheduler.yml'
  Sidekiq::Scheduler.reload_schedule!
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis' }
end
