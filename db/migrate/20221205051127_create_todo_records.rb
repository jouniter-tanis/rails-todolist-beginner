class CreateTodoRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_records do |t|
      t.string :title
      t.text :description
      t.string :status
      t.datetime :duedate
      t.timestamps
    end
  end
end
