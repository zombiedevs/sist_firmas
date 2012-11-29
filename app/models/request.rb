class Request < ActiveRecord::Base
  attr_accessible :descripcion, :fund_id, :request_type_id, :titulo
  belongs_to :request_type
  belongs_to :fund
  
end
