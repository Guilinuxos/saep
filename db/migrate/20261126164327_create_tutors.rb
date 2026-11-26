class CreateTutors < ActiveRecord::Migration[8.1]
  def change
    create_table :tutors do |t|
      t.string :nome
      t.string :cpf

      t.timestamps
    end
  end
end
