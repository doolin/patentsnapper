class ChangeColumnTypeInvpats < ActiveRecord::Migration
  def up
    change_column :invpats, :asgnum, :string
  end

  def down
  end
end
