class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :patent
      t.string :claim, :text, :limit => 4096

      t.timestamps
    end
  end
end
