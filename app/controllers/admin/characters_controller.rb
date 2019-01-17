class Admin::CharactersController < ApplicationController
  before_action :set_admin_character, only: [:show, :edit, :update, :destroy]
  permits :name

  # GET /admin/characters
  def index
    @admin_characters = Admin::Character.all
  end

  # GET /admin/characters/1
  def show
  end

  # GET /admin/characters/new
  def new
    @admin_character = Admin::Character.new
  end

  # GET /admin/characters/1/edit
  def edit
  end

  # POST /admin/characters
  def create(admin_character)
    @admin_character = Admin::Character.new(admin_character)

    if @admin_character.save
      redirect_to @admin_character, notice: 'Character was successfully created.'
    else
      render :new
    end
  end

  # PUT /admin/characters/1
  def update(admin_character)
    if @admin_character.update(admin_character)
      redirect_to @admin_character, notice: 'Character was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/characters/1
  def destroy
    @admin_character.destroy

    redirect_to admin_characters_url, notice: 'Character was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_character(id)
      @admin_character = Admin::Character.find(id)
    end
end
