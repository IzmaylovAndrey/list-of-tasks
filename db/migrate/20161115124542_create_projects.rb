class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.column :title, :string, :limit => 32;

      t.timestamps
    end
  end
end
