class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :creator
      t.text :description

      t.timestamps
    end
  end
end
