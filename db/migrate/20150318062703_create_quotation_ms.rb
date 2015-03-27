class CreateQuotationMs < ActiveRecord::Migration
  def change
	create_table :quotation_ms do |t|
		t.string :quotation_no
		t.datetime :quotation_date
		t.string :customer
		t.string :customer_factory
		t.string :shipment
		t.string :payment
		t.timestamps
	end
  end
end
