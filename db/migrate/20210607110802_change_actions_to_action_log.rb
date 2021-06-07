class ChangeActionsToActionLog < ActiveRecord::Migration[5.2]
  def change
    rename_table :actions, :actionlogs
  end
end
