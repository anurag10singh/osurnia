module Osurnia
  module Api
    module V1
      class Webservices < Grape::API
        version 'v1', :using => :path
        format :json
        default_format :json
        error_format :json

        resource :create_record do
          post do
            data = JSON.parse(params[:records])
            Student.create(name: data)
            if @Student.save
              {
                status: 'success',
                message:  'Student is saved to PG database'
              }
            end
          end
        end
      end
    end
  end
end