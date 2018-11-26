class RegistrationsController < ApplicationController
  before_action :set_registration, only: [:show, :edit, :update, :destroy]
  permits :email

  # GET /registrations
  def index
    @registrations = Registration.all
  end

  # GET /registrations/1
  def show
  end

  # GET /registrations/new
  def new
    @registration = Registration.new
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations
  def create(registration)
    @registration = Registration.new(registration)

    if @registration.save
      redirect_to @registration, notice: 'Registration was successfully created.'
    else
      render :new
    end
  end

  # PUT /registrations/1
  def update(registration)
    if @registration.update(registration)
      redirect_to @registration, notice: 'Registration was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /registrations/1
  def destroy
    @registration.destroy

    redirect_to registrations_url, notice: 'Registration was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration(id)
      @registration = Registration.find(id)
    end
end
