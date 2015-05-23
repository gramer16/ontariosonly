class ChangeZipcodeTypeInServices < ActiveRecord::Migration
  def change
  	def self.up
    change_column :arquitects, :zipcode, :string
  end
 
  def self.down
    change_column :arquitects, :zipcode, :integer
  end
  end
end
