class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :qualification
      t.string :experience

      t.timestamps
    end
  end
end
