class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :sobrenome
      t.string :sexo
      t.string :telefone
      t.string :endereco
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :email
      t.date :data_nascimento

      t.timestamps
    end
  end
end
