class AddDetailsToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :info, :string
    add_column :tasks, :due_date, :datetime
  end
end
