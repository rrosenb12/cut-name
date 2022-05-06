class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    change_table :tests do |t|
      t.rename :input_string, :string_to_cut
      t.rename :output_string, :return_string
    end
  end
end
