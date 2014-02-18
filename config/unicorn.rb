root = "/home/ubuntu/apps/ianda/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.ianda.sock"
worker_processes 11
timeout 30

#after_fork do |server, worker|

  ## Override the default logger to use a separate log for each Unicorn worker.
  ## https://github.com/rails/rails/blob/3-2-stable/railties/lib/rails/application/bootstrap.rb#L23-L49
  #Rails.logger = ActiveRecord::Base.logger = ActionController::Base.logger = begin
    #path = Rails.configuration.paths["log"].first
    #f = File.open(path.sub(".log", "-#{worker.nr}.log"), "a")
    #f.binmode
    #f.sync = true
    #logger = ActiveSupport::TaggedLogging.new(ActiveSupport::BufferedLogger.new(f))
    #logger.level = ActiveSupport::BufferedLogger.const_get(Rails.configuration.log_level.to_s.upcase)
    #logger
  #end
#end
