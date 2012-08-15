class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.date :data
      t.string :descricao
      t.string :horario
      t.string :tipo

      t.timestamps
    end
  end
end
