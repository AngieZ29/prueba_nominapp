class CreateArreglos < ActiveRecord::Migration[6.1]
  def change
    create_table :arreglos do |t|
      t.text :array

      t.timestamps
    end
  end
end
