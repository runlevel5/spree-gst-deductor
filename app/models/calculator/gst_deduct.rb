class Calculator::GstDeduct < Calculator

  def self.description
    I18n.t("gst_deduct")
  end
    
  def self.register
    super
    TaxRate.register_calculator(self)
  end
  
  # We ignore the TaxRate amount
  def compute(order)
    rate = self.calculable
    line_items = order.line_items.select { |i| i.product.tax_category == rate.tax_category }
    line_items.inject(0) {|sum, line_item|
      sum += line_item.total / -11
    }
  end
end
