require 'csv'

desc "Import from csv file"
task :importinventor => [:environment] do

  filename = "db/csv/inventor.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Inventor.create!(row.to_hash)
  end
end
