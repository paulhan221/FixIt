task :save_senator => :environment do 
  SenatorSaver.save_senators
end