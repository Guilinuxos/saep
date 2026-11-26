class CreateAgendamentos < ActiveRecord::Migration[8.1]
  def change
    create_table :agendamentos do |t|
      t.date :data
      t.references :tutor, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
