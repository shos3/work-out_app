class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.datetime :start_time,            null: false 
      #t.string :date,                    null: false 
      t.string :eventt.string :text
      t.string :kg,                      null: false 
      t.string :number,                  null: false 
      t.string :set,                     null: false 
      t.string :time,                    null: false 
      t.string :memo
      t.references :user,                null: false, foreign_key: true
      t.timestamps
    end
  end
end
