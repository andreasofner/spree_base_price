module Spree
	Product.class_eval do
		delegate_belongs_to :master, :fill_weight
		delegate_belongs_to :master, :base_unit
	end
end