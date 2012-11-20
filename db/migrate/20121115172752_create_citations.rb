class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :patent
      t.string :cit_date
      t.string :cit_name
      t.string :cit_kind
      t.string :cit_country
      t.string :citation
      t.string :category
      t.string :citseq

      t.timestamps
    end
  end
end
