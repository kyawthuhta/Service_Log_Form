class AddServiceProviderAndServiceReceiverToContracts < ActiveRecord::Migration[5.2]
  def change
  	
    add_reference :contracts, :service_provider, to_table: 'People'
    add_reference :contracts, :service_receiver, to_table: 'People'
  end
end
