class AperturaCuentasConnection < ActiveRecord::Base
  self.abstract_class = true

  establish_connection :"apc_#{Rails.env}"
end
