class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.text :mensagem
      t.date :data_conclusao
      t.text :conclusao

      t.timestamps
    end
  end
end
