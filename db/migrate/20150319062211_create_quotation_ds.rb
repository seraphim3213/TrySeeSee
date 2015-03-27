class CreateQuotationDs < ActiveRecord::Migration
	def change
		create_table :quotation_ds do |t|
			t.integer :quotation_m_id
			t.string :customer_part_no
			t.integer :quantity
			t.integer :unit_price
			t.timestamps
		end
	end
end
