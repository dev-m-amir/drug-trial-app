# frozen_string_literal: true

module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from StandardError, with: :handle_standard_error
    rescue_from ActionController::ParameterMissing, with: :render_parameter_missing
    rescue_from ActionController::InvalidAuthenticityToken, with: :invalid_csrf_token
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordNotUnique, with: :record_not_unique
  end

  private

  def invalid_csrf_token
    flash[:alert] = I18n.t('errors.failed_request_authenticity')

    referer_or_root_path
  end

  def render_error
    flash[:alert] = I18n.t('errors.page_not_found')

    referer_or_root_path
  end

  def record_not_found
    flash[:alert] = I18n.t('errors.records_not_found')

    referer_or_root_path
  end

  def record_not_unique
    flash[:alert] = I18n.t('errors.duplicate')

    referer_or_root_path
  end

  def render_parameter_missing(exception)
    flash[:alert] = I18n.t('errors.missing_param', param: exception.param.to_s)

    log_exception_backtrace(exception)
    referer_or_root_path
  end

  def handle_standard_error(exception)
    raise exception if Rails.env.test? || Rails.env.development?

    flash[:alert] = I18n.t('errors.server')

    log_exception_backtrace(exception)
    referer_or_root_path
  end

  def user_not_authorized
    flash[:alert] = I18n.t('errors.unauthorize')

    referer_or_root_path
  end

  def log_exception_backtrace(exception)
    return unless Rails.env.production?

    exception.backtrace.each { |line| Rails.logger.warn(line) }
  end

  def redirect_back_or_to(path)
    redirect_to request.referer || path
  end

  def referer_or_root_path
    redirect_back_or_to root_path
  end
end
