class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    sleep 5
    puts 'Hello World'
  end
end
