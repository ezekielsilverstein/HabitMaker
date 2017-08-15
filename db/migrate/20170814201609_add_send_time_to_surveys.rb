class AddSendTimeToSurveys < ActiveRecord::Migration[5.1]
  def change
    add_column :surveys, :send_time, :time
  end
end
