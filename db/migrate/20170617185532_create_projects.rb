class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.json :payload
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
