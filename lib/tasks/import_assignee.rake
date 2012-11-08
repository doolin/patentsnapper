require 'csv'

desc "Import from csv file"
task :importassignee => [:environment] do

  filename = "db/csv/assignee.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Assignee.create!(row.to_hash)
  end
end
