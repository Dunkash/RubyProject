class InitialMigration < ActiveRecord::Migration[6.0]
  def change

    create_table :users do |t|
      t.string  :name
      t.string  :password
      t.timestamps
    end

    create_table :user_sessions do |t|
      t.belongs_to :user
      t.belongs_to :session
      t.boolean :write_access
      t.timestamps
    end

    create_table :sessions do |t|
      t.string  :name
      t.boolean :form
      t.integer :line_id
      t.timestamps
    end

    create_table :form_graphs do |t|
      t.belongs_to :session
      t.string  :formula
      t.timestamps
    end

    create_table :value_graphs do |t|
      t.belongs_to :session
      t.string  :x
      t.integer :y
      t.timestamps
    end

  end
end
