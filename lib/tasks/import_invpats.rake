require 'csv'

desc "Import from csv file"
task :import => [:environment] do

  filename = "db/csv/invpat_new.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Invpat.create!(row.to_hash)
  end
end
