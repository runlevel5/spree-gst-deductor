# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class GstDeductorExtension < Spree::Extension
  version "1.0"
  description "Deduct GST from GST Inclusive Price Product. Written by Trung LE <joneslee85@gmail.com>"
  url "http://github.com/joneslee85/spree-gst-deductor"

  # Please use gst_deductor/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    
    # Register the Calculator
    begin
      Calculator::GstDeduct.register if Calculator::GstDeduct.table_exists?
    rescue Exception => e
      $stderr.puts "Error registering calculator #{Calculator::GstDeduct}"
    end
    
    Charge.class_eval do
      def ensure_positive_amount
      end
    end
    
  end
end
