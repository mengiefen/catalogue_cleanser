# frozen_string_literal: true

require 'test_helper'

class ItemPacksAliasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_packs_alias = item_packs_aliases(:one)
  end

  test 'should get index' do
    get item_packs_aliases_url
    assert_response :success
  end

  test 'should get new' do
    get new_item_packs_alias_url
    assert_response :success
  end

  test 'should create item_packs_alias' do
    assert_difference('ItemPacksAlias.count') do
      post item_packs_aliases_url,
           params: { item_packs_alias: { alias: @item_packs_alias.alias, confirmed: @item_packs_alias.confirmed } }
    end

    assert_redirected_to item_packs_alias_url(ItemPacksAlias.last)
  end

  test 'should show item_packs_alias' do
    get item_packs_alias_url(@item_packs_alias)
    assert_response :success
  end

  test 'should get edit' do
    get edit_item_packs_alias_url(@item_packs_alias)
    assert_response :success
  end

  test 'should update item_packs_alias' do
    patch item_packs_alias_url(@item_packs_alias),
          params: { item_packs_alias: { alias: @item_packs_alias.alias, confirmed: @item_packs_alias.confirmed } }
    assert_redirected_to item_packs_alias_url(@item_packs_alias)
  end

  test 'should destroy item_packs_alias' do
    assert_difference('ItemPacksAlias.count', -1) do
      delete item_packs_alias_url(@item_packs_alias)
    end

    assert_redirected_to item_packs_aliases_url
  end
end
