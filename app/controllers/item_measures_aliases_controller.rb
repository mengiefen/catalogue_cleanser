# frozen_string_literal: true

class ItemMeasuresAliasesController < ApplicationController
  before_action :set_item_measures_alias, only: %i[show edit update destroy]

  # GET /item_measures_aliases or /item_measures_aliases.json
  def index
    @item_measures_aliases = ItemMeasuresAlias.all
  end

  # GET /item_measures_aliases/1 or /item_measures_aliases/1.json
  def show; end

  # GET /item_measures_aliases/new
  def new
    @item_measures_alias = ItemMeasuresAlias.new
  end

  # GET /item_measures_aliases/1/edit
  def edit; end

  # POST /item_measures_aliases or /item_measures_aliases.json
  def create
    @item_measures_alias = ItemMeasuresAlias.new(item_measures_alias_params)

    respond_to do |format|
      if @item_measures_alias.save
        format.html do
          redirect_to(item_measures_alias_url(@item_measures_alias),
                      notice: 'Item measures alias was successfully created.'
                     )
        end
        format.json { render(:show, status: :created, location: @item_measures_alias) }
      else
        format.html { render(:new, status: :unprocessable_entity) }
        format.json { render(json: @item_measures_alias.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /item_measures_aliases/1 or /item_measures_aliases/1.json
  def update
    respond_to do |format|
      if @item_measures_alias.update(item_measures_alias_params)
        format.html do
          redirect_to(item_measures_alias_url(@item_measures_alias),
                      notice: 'Item measures alias was successfully updated.'
                     )
        end
        format.json { render(:show, status: :ok, location: @item_measures_alias) }
      else
        format.html { render(:edit, status: :unprocessable_entity) }
        format.json { render(json: @item_measures_alias.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /item_measures_aliases/1 or /item_measures_aliases/1.json
  def destroy
    @item_measures_alias.destroy!

    respond_to do |format|
      format.html { redirect_to(item_measures_aliases_url, notice: 'Item measures alias was successfully destroyed.') }
      format.json { head(:no_content) }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item_measures_alias
    @item_measures_alias = ItemMeasuresAlias.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def item_measures_alias_params
    params.require(:item_measures_alias).permit(:alias, :confirmed)
  end
end
