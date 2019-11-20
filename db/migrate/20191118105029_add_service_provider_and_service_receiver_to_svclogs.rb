class AddServiceProviderAndServiceReceiverToSvclogs < ActiveRecord::Migration[5.2]
  def change
  	add_reference :svclogs, :service_provider, to_table: 'People'
    add_reference :svclogs, :service_receiver, to_table: 'People'
  end
end
