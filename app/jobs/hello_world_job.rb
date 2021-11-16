class HelloWorldJob < ApplicationJob
  sidekiq_options retry: 1

  def perform(*args)
    puts 'Hello world'
  end
end
