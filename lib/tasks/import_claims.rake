require 'csv'

desc "Import from csv file"
task :importclaims => [:environment] do

  filename = "db/csv/claims.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Claim.create!(row.to_hash)
  end
end
