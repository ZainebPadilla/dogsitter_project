class AddDogsitterAndDogToStrolls < ActiveRecord::Migration[7.2]
  def change
    add_reference :strolls, :dogsitter, null: false, foreign_key: true
    add_reference :strolls, :dog, null: false, foreign_key: true
  end
end
