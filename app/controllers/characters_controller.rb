class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]
  permits :name

  # GET /characters
  def index
    @characters = Character.all
  end

  # GET /characters/1
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  def create(character)
    @character = Character.new(character)

    if @character.save
      redirect_to @character, notice: 'Character was successfully created.'
    else
      render :new
    end
  end

  # PUT /characters/1
  def update(character)
    if @character.update(character)
      redirect_to @character, notice: 'Character was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /characters/1
  def destroy
    @character.destroy

    redirect_to characters_url, notice: 'Character was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character(id)
      @character = Character.find(id)
    end
end
