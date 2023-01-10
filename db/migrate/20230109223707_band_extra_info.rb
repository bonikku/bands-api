class BandExtraInfo < ActiveRecord::Migration[7.0]
  def change
    add_column :bands, :origin, :string
    add_column :bands, :labels, :string
    add_column :bands, :formed_in_year, :integer
  end
end
