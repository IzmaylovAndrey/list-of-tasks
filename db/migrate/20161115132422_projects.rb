class Projects < ActiveRecord::Migration[5.0]
  def change
    change_table :projects do |t|
      t.column :title, :string, :limit => 32;
    end
  end
end
