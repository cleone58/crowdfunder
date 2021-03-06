class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :fund_goal
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
