class AddNameClocktypeTimestampToClockings < ActiveRecord::Migration[5.2]
  def change
    add_column :clockings, :name       , :string
    add_column :clockings, :clock_type , :string
    add_column :clockings, :time       , :timestamp
  end
end
