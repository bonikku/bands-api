class MembersExtraInfo < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :born_year, :integer
    add_column :members, :instrument, :string
  end
end
