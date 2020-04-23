class PhoneAssignsController < ApplicationController

  before_action :load_resource, only: [:create]

  def create
    @phone.assign_attributes(phone_no: original_phone)
    if @phone.save
      render json: {phone: original_phone}
    else
      render json: @phone.errors.messages, status: :bad_request
    end
  end

  def index
    render json: {phones: PhoneAssign.pluck(:phone_no)}
  end

  private

  def original_phone
    @original_phone ||= params[:phone] || @phone.random_phone_number
  end

  def load_resource
    @phone = PhoneAssign.new
  end
end
