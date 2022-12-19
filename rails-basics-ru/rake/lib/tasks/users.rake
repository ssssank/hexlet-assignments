require 'csv'

namespace :hexlet do
  task :import_users => :environment do
    CSV.foreach('test/fixtures/files/users.csv') do |row|
      User.create(first_name: row[0], last_name: row[1], birthday: Time.now, email: row[3]) unless row[0] == 'first_name'
    end
  end
end
