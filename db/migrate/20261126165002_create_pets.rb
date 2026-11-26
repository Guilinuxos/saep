class CreatePets < ActiveRecord::Migration[8.1]
  def change
    create_table :pets do |t|
      t.string :nome
      t.string :especie
      t.string :raca
      t.integer :idade
      t.string :tamanho
      t.decimal :peso, precision: 2, scale: 2
      t.references :tutor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
