require 'digest/sha2'
class User < ActiveRecord::Base
  cattr_accessor :current
  attr_accessor :password, :accept_terms

  class << self

    def authenticate(authentication_hash = {})
      user = User.find_by_email(authentication_hash[:email])
      user if user and user.password_match?(authentication_hash[:password])
    end

  end

  validates_uniqueness_of   :email
  validates_presence_of     :email
  validates_presence_of     :display_name
  validates_uniqueness_of   :display_name
  validates_confirmation_of :password, :if => :password_changed?
  validates_acceptance_of   :accept_terms

  before_create :generate_activation
  before_save   :generate_password, :if => :password_changed?
  after_create  :send_activation_email

  def password_changed?
    !password.blank?
  end

  def password_match?(password)
    hash = generate_hash(password)
    password_hash == hash
  end

  def generate_hash(password)
    Digest::SHA2.hexdigest(self.password_salt + password)
  end

  def activate
    return if Time.now > activation_expires
    self.activation_key = nil
    self.activation_expires = nil
    self.active = true
    self.save
  end

  private

  def send_activation_email
    UserMailer.deliver_welcome_email(self)
  end

  def generate_activation
    self.activation_key = ActiveSupport::SecureRandom.base64(40)
    self.activation_expires = Time.now + 10.days
    logger.warn(self.activation_key)
  end

  def generate_password
    self.password_salt = ActiveSupport::SecureRandom.base64(10)
    self.password_hash = generate_hash(password)
  end

end
