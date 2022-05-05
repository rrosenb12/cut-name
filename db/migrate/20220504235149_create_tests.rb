class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :input_string
      t.string :output_string

      t.timestamps
    end
  end
end
