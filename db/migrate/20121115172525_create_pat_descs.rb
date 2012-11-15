class CreatePatDescs < ActiveRecord::Migration
  def change
    create_table :pat_descs do |t|
      t.string :patent
      t.string :title
      t.string :abstract

      t.timestamps
    end
  end
end
