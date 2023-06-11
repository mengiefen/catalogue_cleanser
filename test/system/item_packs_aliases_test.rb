# frozen_string_literal: true

require 'application_system_test_case'

class ItemPacksAliasesTest < ApplicationSystemTestCase
  setup do
    @item_packs_alias = item_packs_aliases(:one)
  end

  test 'visiting the index' do
    visit item_packs_aliases_url
    assert_selector 'h1', text: 'Item packs aliases'
  end

  test 'should create item packs alias' do
    visit item_packs_aliases_url
    click_on 'New item packs alias'

    fill_in 'Alias', with: @item_packs_alias.alias
    check 'Confirmed' if @item_packs_alias.confirmed
    click_on 'Create Item packs alias'

    assert_text 'Item packs alias was successfully created'
    click_on 'Back'
  end

  test 'should update Item packs alias' do
    visit item_packs_alias_url(@item_packs_alias)
    click_on 'Edit this item packs alias', match: :first

    fill_in 'Alias', with: @item_packs_alias.alias
    check 'Confirmed' if @item_packs_alias.confirmed
    click_on 'Update Item packs alias'

    assert_text 'Item packs alias was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Item packs alias' do
    visit item_packs_alias_url(@item_packs_alias)
    click_on 'Destroy this item packs alias', match: :first

    assert_text 'Item packs alias was successfully destroyed'
  end
end
