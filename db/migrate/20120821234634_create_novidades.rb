class CreateNovidades < ActiveRecord::Migration
  def change
    create_table :novidades do |t|
      t.string :titulo
      t.string :resumo
      t.text :conteudo
      t.date :data

      t.timestamps
    end
  end
end
