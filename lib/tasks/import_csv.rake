require 'csv'

## Import specified CSV to specified class
# rake import_csv file='/db/csv/file.csv' klass='ClassName'

desc "Import from csv file"
task :import_csv => [:environment] do

  file = ENV['file']
  klass = ENV['klass']
  
  filename = file
  CSV.foreach(filename, :headers => true) do |row|
      klass.constantize.create!(row.to_hash)
  end
end
