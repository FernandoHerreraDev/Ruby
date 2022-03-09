class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :created_at, :datetime #add_collum es es metodo para agregar columna a una DB, el primer argumento es la tabla, el segundo es el campo y el tercero es el tipo
    add_column :articles, :updated_at, :datetime
    
  end
end
