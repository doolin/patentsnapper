class CreatePatents < ActiveRecord::Migration
  def change
    create_table :patents do |t|
      t.string :patent
      t.string :kind
      t.integer :claims
      t.string :apptype
      t.string :appnum
      t.string :gdate
      t.string :gyear
      t.string :appdate
      t.integer :appyear

      t.timestamps
    end
  end
end
