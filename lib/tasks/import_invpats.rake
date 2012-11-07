require 'csv'

desc "Import from csv file"
task :import => [:environment] do

  filename = "db/csv/invpat_new.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Invpat.create!(row.to_hash)
  end
end

=begin
desc "Import from csv file the dumb way"
task :import_dumb => [:environment] do

  file = "db/csv/invpat_original_3000.csv"

  CSV.foreach(file, :headers => false) do |row|
    Invpat.create {
      :firstname   => row[0],
      :lastname    => row[1],
      :street      => row[2],
      :city        => row[3],
      :state       => row[4],
      :country     => row[5],
      :zipcode     => row[6],
      :lat         => row[7],
      :lon         => row[8],
      :invseq      => row[9],
      :patent      => row[10],
      :gyear       => row[11],
      :appyearstr  => row[12],
      :appdatestr  => row[13],
      :assignee    => row[14],
      :asgnum      => row[15],
      :patentclass => row[16],
      :coauthor    => row[17],
      :invnum      => row[18],
      :lower       => row[19],
      :upper       => row[20]
    }
  end

end
=end
