class CreateCLimits < ActiveRecord::Migration[6.0]
  def change
    create_table :c_limits do |t|

      t.timestamps
    end
  end
end
