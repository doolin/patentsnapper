class CreatePatentClasses < ActiveRecord::Migration
  def change
    create_table :patent_classes do |t|
      t.string :patent
      t.integer :prim

      t.timestamps
    end
  end
end
