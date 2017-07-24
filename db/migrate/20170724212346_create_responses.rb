class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.string :answer_text
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
