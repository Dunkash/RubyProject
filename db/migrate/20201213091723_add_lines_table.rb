class AddLinesTable < ActiveRecord::Migration[6.0]

  change_table :value_graphs do |t|
    t.integer :line_id
  end

  change_table :form_graphs do |t|
    t.remove :session_id
    t.integer :line_id
  end
end
