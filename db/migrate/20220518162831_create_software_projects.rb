class CreateSoftwareProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :software_projects do |t|
      t.string :title
      t.string :description 
      t.text :body
      t.timestamps
    end
  end
end
