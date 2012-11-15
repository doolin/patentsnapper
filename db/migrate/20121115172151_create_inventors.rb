class CreateInventors < ActiveRecord::Migration
  def change
    create_table :inventors do |t|
      t.string :patent
      t.string :firstname
      t.string :lastname
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :code
      t.string :nationality
      t.string :invseq

      t.timestamps
    end
  end
end
