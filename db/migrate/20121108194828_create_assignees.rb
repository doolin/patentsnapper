class CreateAssignees < ActiveRecord::Migration
  def change
    create_table :assignees do |t|
      t.string :patent
      t.integer :asgtype
      t.string :assignee
      t.string :city
      t.string :state
      t.string :country
      t.string :nationality
      t.string :residence
      t.integer :asgseq

      t.timestamps
    end
  end
end
