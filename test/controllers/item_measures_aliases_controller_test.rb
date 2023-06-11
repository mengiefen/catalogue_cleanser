# frozen_string_literal: true

require 'test_helper'

class ItemMeasuresAliasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_measures_alias = item_measures_aliases(:one)
  end

  test 'should get index' do
    get item_measures_aliases_url
    assert_response :success
  end

  test 'should get new' do
    get new_item_measures_alias_url
    assert_response :success
  end

  test 'should create item_measures_alias' do
    assert_difference('ItemMeasuresAlias.count') do
      post item_measures_aliases_url,
           params: {
             item_measures_alias: {
               alias: @item_measures_alias.alias,
               confirmed: @item_measures_alias.confirmed
             }
           }
    end

    assert_redirected_to item_measures_alias_url(ItemMeasuresAlias.last)
  end

  test 'should show item_measures_alias' do
    get item_measures_alias_url(@item_measures_alias)
    assert_response :success
  end

  test 'should get edit' do
    get edit_item_measures_alias_url(@item_measures_alias)
    assert_response :success
  end

  test 'should update item_measures_alias' do
    patch item_measures_alias_url(@item_measures_alias),
          params: {
            item_measures_alias: {
              alias: @item_measures_alias.alias,
              confirmed: @item_measures_alias.confirmed
            }
          }
    assert_redirected_to item_measures_alias_url(@item_measures_alias)
  end

  test 'should destroy item_measures_alias' do
    assert_difference('ItemMeasuresAlias.count', -1) do
      delete item_measures_alias_url(@item_measures_alias)
    end

    assert_redirected_to item_measures_aliases_url
  end
end
