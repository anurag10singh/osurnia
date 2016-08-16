module Osurnia
  module Api
    module V1
      class Api_v1 < Grape::API
        # Mount
        mount ::Osurnia::Api::V1::webservices
      end
    end
  end
end