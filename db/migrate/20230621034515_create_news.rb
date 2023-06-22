class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.string :show
      t.string :edit

      t.timestamps
    end
  end
end
