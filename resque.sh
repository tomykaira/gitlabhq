mkdir -p tmp/pids
bundle exec rake environment resque:work QUEUE=post_receive,mailer,system_hook RAILS_ENV=production PIDFILE=tmp/pids/resque_worker.pid BACKGROUND=yes
