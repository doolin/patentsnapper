class CreatePatDescs < ActiveRecord::Migration
  def change
    create_table :pat_descs do |t|
      t.string :patent,   :text, :limit => 512
      t.string :title,    :text, :limit => 512
      t.string :abstract, :text, :limit => 4096

      t.timestamps
    end
  end
end
