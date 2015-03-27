class QuotationM < ActiveRecord::Base
	has_many :quotationDs
	accepts_nested_attributes_for :quotationDs
end
