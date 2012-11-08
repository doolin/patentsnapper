class AddSubclassToPatentClass < ActiveRecord::Migration
  def change
    add_column :patent_classes, :subclass, :string
  end
end
