class CreateDoneSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :done_steps do |t|
      t.integer :step_id
      t.integer :user_id

      t.timestamps
    end
  end
end
