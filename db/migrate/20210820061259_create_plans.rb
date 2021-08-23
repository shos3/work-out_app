class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :plan
      t.string :date
      t.timestamps
    end
  end
end
