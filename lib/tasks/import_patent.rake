require 'csv'

desc "Import from csv file"
task :importpatent => [:environment] do

  filename = "db/csv/patent.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Patent.create!(row.to_hash)
  end
end
