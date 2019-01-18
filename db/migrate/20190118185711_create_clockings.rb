class CreateClockings < ActiveRecord::Migration[5.2]
  def change
    create_table :clockings do |t|

      t.timestamps
    end
  end
end
