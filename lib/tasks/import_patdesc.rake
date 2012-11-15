require 'csv'
require './app/models/pat_desc'

desc "Import from csv file"
task :importpatdesc => [:environment] do

  filename = "db/csv/patdesc.csv"
  CSV.foreach(filename, :headers => true) do |row|
      PatDesc.create!(row.to_hash)
  end
end

