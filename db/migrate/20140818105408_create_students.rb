class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :cl
      t.integer :mobile

      t.timestamps
    end
  end
end
