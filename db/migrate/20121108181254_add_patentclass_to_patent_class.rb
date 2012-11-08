class AddPatentclassToPatentClass < ActiveRecord::Migration
  def change
    add_column :patent_classes, :patentclass, :string
  end
end
