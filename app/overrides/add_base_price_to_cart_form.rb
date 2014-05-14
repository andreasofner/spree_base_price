Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
	:name => 'add_base_price_to_cart_form',
	:insert_after => "span.price.selling",
	:text => "
		<br />
		<span class='price base'>
				<%= Spree::Money.new((@product.price / @product.fill_weight), with_currency: true).to_s + ' / ' + @product.base_unit if @product.fill_weight %>
		</span>
	")
	
Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
	:name => 'add_fill_weight_to_data',
	:replace => "erb[loud]:contains('data-price')",
	:text => "<%= radio_button_tag \"variant_id\", variant.id, index == 0, 'data-price' => Spree::Money.new(variant.price, with_currency: true).to_s, 'data-base_price' => Spree::Money.new((variant.price / variant.fill_weight), with_currency: true).to_s + ' / ' + variant.product.base_unit  %>"
	)