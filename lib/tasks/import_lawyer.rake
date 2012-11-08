require 'csv'

desc "Import from csv file"
task :importlawyer => [:environment] do

  filename = "db/csv/lawyer.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Lawyer.create!(row.to_hash)
  end
end
