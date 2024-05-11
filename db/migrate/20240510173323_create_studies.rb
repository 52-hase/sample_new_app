class CreateStudies < ActiveRecord::Migration[7.1]
  def change
    create_table :studies do |t|
      t.integer :time

      t.timestamps
    end
  end
end
