require 'csv'

desc "Import from csv file"
task :importcitation => [:environment] do

  filename = "db/csv/citation.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Citation.create!(row.to_hash)
  end
end
