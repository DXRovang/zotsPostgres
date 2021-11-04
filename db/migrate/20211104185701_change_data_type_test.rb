class ChangeDataTypeTest < ActiveRecord::Migration[6.1]
  def change
    change_column :families, :name, :text
  end
end
