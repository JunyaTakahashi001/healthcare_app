class ChangeDataDateToActions < ActiveRecord::Migration[5.2]
  def change
    change_column :actions, :date, :date
  end
end
