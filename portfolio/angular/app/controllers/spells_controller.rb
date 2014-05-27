class SpellsController < ApplicationController

  def index
    @spells = Spell.all
    respond_to do |format|
      format.json { render json: @spells.as_json }
    end
  end

  def create
    @spell = Spell.create spell_params

    respond_to do |format|
      format.json { render json: @spell.as_json }
    end
  end

  def update
    @spell = Spell.find params[:id]
    @spell.update_attributes spell_params

    respond_to do |format|
      format.json { render json: @spell.as_json }
    end
  end

  def destroy
    @spell = Spell.find params[:id]
    @spell.delete

    respond_to do |format|
      format.json { render json: @spell.as_json }
    end
  end

private

  def spell_params
    params.require(:spell).permit(:name, :effect)
  end

end
