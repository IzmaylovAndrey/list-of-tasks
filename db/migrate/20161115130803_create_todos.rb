class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :task, :null => false, :limit => 50
      t.bool :is_completed
      t.relation :project, foreign_key: true

      t.timestamps
    end
  end
end
