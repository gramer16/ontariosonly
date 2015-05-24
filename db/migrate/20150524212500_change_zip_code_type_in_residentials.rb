class ChangeZipCodeTypeInResidentials < ActiveRecord::Migration
  def self.up
    change_column :residentials, :zipcode, :string
  end
 
  def self.down
    change_column :residentials, :zipcode, :integer
  end
end
