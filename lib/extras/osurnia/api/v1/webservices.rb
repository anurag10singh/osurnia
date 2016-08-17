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
            data = params[:records]
            @student = Student.create(name: data)
            if @student.save!
              {
                status: 'success',
                data: "#{params[:records]}",
                message: "Student #{params[:records]} is saved to PG database"
              }
            else
              {
                status: 'failure',
                message: 'Student data is not saved to PG database'
              }
            end
          end
        end
        resource :get_record do
          get do
            data = params[:id]
            @student = Student.where(id: @student).first
            if @student.present?
              {
                status: 'success',
                name: "#{@student.name}",
                message: "Student #{@student.name} is saved to PG database"
              }
            else
              {
                status: 'failure',
                message: 'Student data is not saved to PG database'
              }
            end
          end
        end
      end
    end
  end
end