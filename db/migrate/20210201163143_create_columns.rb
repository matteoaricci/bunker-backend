class CreateColumns < ActiveRecord::Migration[6.0]
  def change
    create_table :columns do |t|
      t.string :title
      t.integer :project_id
      t.timestamps
    end
  end
end
