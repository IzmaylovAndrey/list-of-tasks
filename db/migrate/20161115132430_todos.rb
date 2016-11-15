class Todos < ActiveRecord::Migration[5.0]
  def change
     change_table :todos do |t|
      t.column :task, :string, :null => false, :limit => 50;
      t.column :is_completed, :bool
    end
  end
end
