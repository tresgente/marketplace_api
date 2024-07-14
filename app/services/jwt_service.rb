SECRET_KEY = Rails.application.secrets.secret_key_base
class JwtService
  def self.encode(payload)
    JWT.encode(payload, SECRET_KEY)
  end
  
  def self.decode(token)
    JWT.decode(token, SECRET_KEY).first
  rescue JWT::DecodeError
    nil
  end
end
