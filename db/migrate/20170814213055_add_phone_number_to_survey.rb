class AddPhoneNumberToSurvey < ActiveRecord::Migration[5.1]
  def change
    add_column :surveys, :phone_number, :string
  end
end
