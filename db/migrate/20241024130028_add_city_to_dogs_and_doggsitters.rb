class AddCityToDogsAndDoggsitters < ActiveRecord::Migration[7.2]
  def change
    add_reference :dogs, :city, foreign_key: true
    add_reference :dogsitters, :city, foreign_key: true
  end
end
