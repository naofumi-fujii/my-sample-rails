class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    hoge
  end
end
