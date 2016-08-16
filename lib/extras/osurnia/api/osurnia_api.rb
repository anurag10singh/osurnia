module Innoverse
	module Api
    class OsurniaApi < Grape::API
      # Mounts
      mount Osurnia::Api::V1::Api_v1
    end
	end
end