class AddDetailsToTodoRecord < ActiveRecord::Migration[7.0]
  def change
    add_column :todo_records, :duedate, :datetime
  end
end
