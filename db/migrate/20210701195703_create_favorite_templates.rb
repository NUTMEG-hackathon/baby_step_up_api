class CreateFavoriteTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_templates do |t|
      t.integer :user_id
      t.integer :template_id

      t.timestamps
    end
  end
end
