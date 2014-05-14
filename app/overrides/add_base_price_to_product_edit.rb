Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
	:name => 'add_base_price_to_product_edit',
	:insert_after => "erb[loud]:contains('text_field :price')",
	:text => "
		<%= f.field_container :base_price do %>
			<%= f.label :fill_weight, raw(Spree.t(:fill_weight)) %>
			<%= f.text_field :fill_weight %>
			
			<%= f.label :base_unit, raw(Spree.t(:base_unit)) %>
			<%= f.text_field :base_unit %>
			
			<%= f.error_message_on :base_price %>
		<% end %>
	")