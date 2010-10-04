class CreateGstDeductableZone < ActiveRecord::Migration
  def self.up
    # Create GST Deductable Zone

    z = Zone.find_or_create_by_name_and_description('GST Deductable Zone', 'Countries that is not entiled to GST charge')

    if z
      Country.all.each do |c|
        unless c.eql?(Country.find_by_name('Australia'))
          z.members << ZoneMember.create(:zoneable => c)
        end
      end
    end
  end

  def self.down
    z = Zone.find_by_name('GST Deductable Zone')
    z.destroy if z
  end
end