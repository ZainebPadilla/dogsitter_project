class RenameRaceToNameInDogs < ActiveRecord::Migration[7.2]
  def change
    rename_column :dogs, :race, :name
  end
end
