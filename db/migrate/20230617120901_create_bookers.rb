class CreateBookers < ActiveRecord::Migration[6.1]
  def change
    create_table :bookers do |t|

      t.timestamps
    end
  end
end
