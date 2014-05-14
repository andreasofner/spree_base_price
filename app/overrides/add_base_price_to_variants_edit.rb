Deface::Override.new(:virtual_path => 'spree/admin/variants/_form',
	:name => 'add_base_price_to_variants_edit',
	:insert_after => "erb[loud]:contains('text_field :price')",
	:text => "
		<%= f.field_container :base_price do %>
			<%= f.label :fill_weight, raw(Spree.t(:fill_weight)) %>
			<%= f.text_field :fill_weight %>
			<%= @product.base_unit %>
			
			<%= f.error_message_on :base_price %>
		<% end %>
	")