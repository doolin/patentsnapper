class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.string :patent
      t.string :firstname
      t.string :lastname
      t.string :lawcountry
      t.string :orgname
      t.integer :lawseq

      t.timestamps
    end
  end
end
