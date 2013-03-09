class AddDirectorField < ActiveRecord::Migration
  def change
    add_column :movies, :director_name, :string 
  end

end
