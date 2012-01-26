new_record_logfile = File.open("#{RAILS_ROOT}/log/new_record.log", 'a')
new_record_logfile.sync = true
NEW_RECORD_LOG = NewRecordLogger.new(new_record_logfile)