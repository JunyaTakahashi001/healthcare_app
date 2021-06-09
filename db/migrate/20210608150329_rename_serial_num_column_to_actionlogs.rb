class RenameSerialNumColumnToActionlogs < ActiveRecord::Migration[5.2]
  def change
    rename_column :actionlogs, :serial_num, :group_num
  end
end
