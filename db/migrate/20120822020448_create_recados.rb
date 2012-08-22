class CreateRecados < ActiveRecord::Migration
  def change
    create_table :recados do |t|
      t.integer :usuario_id
      t.text :recado
      t.date :data

      t.timestamps
    end
  end
end
