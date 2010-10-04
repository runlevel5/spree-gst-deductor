require File.dirname(__FILE__) + '/../test_helper'

class GstDeductorExtensionTest < Test::Unit::TestCase
  
  # Replace this with your real tests.
  def test_this_extension
    flunk
  end
  
  def test_initialization
    assert_equal File.join(File.expand_path(Rails.root), 'vendor', 'extensions', 'gst_deductor'), GstDeductorExtension.root
    assert_equal 'Gst Deductor', GstDeductorExtension.extension_name
  end
  
end
