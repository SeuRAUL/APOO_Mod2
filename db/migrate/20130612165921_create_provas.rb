class CreateProvas < ActiveRecord::Migration
  def change
    create_table :provas do |t|
      t.string :materia
      t.text :descricao
      t.references :user

      t.timestamps
    end
    add_index :provas, :user_id
  end
end
