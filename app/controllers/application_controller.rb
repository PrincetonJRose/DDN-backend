class ApplicationController < ActionController::API

    def current_user
        jwt_token = request.headers['JWT-Key']
        if !jwt_token
            return nil
        end
        id = JWT.decode(jwt_token, ENV['JWT_KEY']).first['user_id']
        User.find_by(id: id)
    end

    def authorize!
        unless current_user
            render json: { errors: "You need to be logged in to do that action." }, status: :unauthorized
        end
    end

end
