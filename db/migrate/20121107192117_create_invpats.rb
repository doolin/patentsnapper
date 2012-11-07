class CreateInvpats < ActiveRecord::Migration
  def change
    create_table :invpats do |t|
      t.string  :firstname
      t.string  :lastname
      t.string  :street
      t.string  :city
      t.string  :state
      t.string  :country
      t.string  :zipcode
      t.float   :lat
      t.float   :lon
      t.integer :invseq
      t.string  :patent
      t.integer :gyear
      t.string  :appyearstr
      t.string  :appdatestr
      t.string  :assignee
      t.integer :asgnum
      t.string  :patentclass
      t.string  :coauthor
      t.string  :invnum
      t.string  :lower
      t.string  :upper

      t.timestamps
    end

    add_index :invpats, :assignee
    add_index :invpats, [:firstname, :lastname]
    add_index :invpats, :firstname
    add_index :invpats, :invnum, :unique => true
    add_index :invpats, :lastname
    add_index :invpats, :lower
    add_index :invpats, :upper
    add_index :invpats, :patent

  end
end
