class CreateTeachers < ActiveRecord::Migration
  
  def change
    # Add code to create the table here
    # HINT: check out ActiveRecord::Migration.create_table
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone

      t.timestamps 
    end
  end

end
