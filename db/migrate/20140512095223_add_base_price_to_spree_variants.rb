class AddBasePriceToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :fill_weight, :decimal
		add_column :spree_variants, :base_unit, :string
  end
end
