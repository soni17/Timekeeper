class AddNotNullToTime < ActiveRecord::Migration[5.2]
  def change
    change_column_null :clockings , :time , false , Time.now
  end
end
