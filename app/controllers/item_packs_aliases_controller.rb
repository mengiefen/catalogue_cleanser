# frozen_string_literal: true

class ItemPacksAliasesController < ApplicationController
  before_action :set_item_packs_alias, only: %i[show edit update destroy]

  # GET /item_packs_aliases or /item_packs_aliases.json
  def index
    @item_packs_aliases = ItemPacksAlias.all
  end

  # GET /item_packs_aliases/1 or /item_packs_aliases/1.json
  def show; end

  # GET /item_packs_aliases/new
  def new
    @item_packs_alias = ItemPacksAlias.new
  end

  # GET /item_packs_aliases/1/edit
  def edit; end

  # POST /item_packs_aliases or /item_packs_aliases.json
  def create
    @item_packs_alias = ItemPacksAlias.new(item_packs_alias_params)

    respond_to do |format|
      if @item_packs_alias.save
        format.html do
          redirect_to(item_packs_alias_url(@item_packs_alias), notice: 'Item packs alias was successfully created.')
        end
        format.json { render(:show, status: :created, location: @item_packs_alias) }
      else
        format.html { render(:new, status: :unprocessable_entity) }
        format.json { render(json: @item_packs_alias.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /item_packs_aliases/1 or /item_packs_aliases/1.json
  def update
    respond_to do |format|
      if @item_packs_alias.update(item_packs_alias_params)
        format.html do
          redirect_to(item_packs_alias_url(@item_packs_alias), notice: 'Item packs alias was successfully updated.')
        end
        format.json { render(:show, status: :ok, location: @item_packs_alias) }
      else
        format.html { render(:edit, status: :unprocessable_entity) }
        format.json { render(json: @item_packs_alias.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /item_packs_aliases/1 or /item_packs_aliases/1.json
  def destroy
    @item_packs_alias.destroy!

    respond_to do |format|
      format.html { redirect_to(item_packs_aliases_url, notice: 'Item packs alias was successfully destroyed.') }
      format.json { head(:no_content) }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item_packs_alias
    @item_packs_alias = ItemPacksAlias.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def item_packs_alias_params
    params.require(:item_packs_alias).permit(:alias, :confirmed)
  end
end
