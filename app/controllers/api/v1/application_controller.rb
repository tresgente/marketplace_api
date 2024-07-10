class ApplicationController < ActionController::API
  def authenticate_user
    header = request.headers['Authorization']
    token = header.split(' ').last if header
    decoded = JwtService.decode(token)
    @current_user = User.find(decoded['user_id']) if decoded
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Unauthorized' }, status: :unauthorized
  end

  def current_user
    @current_user
  end
end