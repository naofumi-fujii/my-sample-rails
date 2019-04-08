class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    puts "Hello World"
  end
end
