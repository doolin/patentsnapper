require 'csv'
require './app/models/patent_class'

desc "Import from csv file"
task :importclass => [:environment] do

  filename = "db/csv/class.csv"
  CSV.foreach(filename, :headers => true) do |row|
      PatentClass.create!(row.to_hash)
  end
end

