# frozen_string_literal: true

require 'application_system_test_case'

class ItemMeasuresAliasesTest < ApplicationSystemTestCase
  setup do
    @item_measures_alias = item_measures_aliases(:one)
  end

  test 'visiting the index' do
    visit item_measures_aliases_url
    assert_selector 'h1', text: 'Item measures aliases'
  end

  test 'should create item measures alias' do
    visit item_measures_aliases_url
    click_on 'New item measures alias'

    fill_in 'Alias', with: @item_measures_alias.alias
    check 'Confirmed' if @item_measures_alias.confirmed
    click_on 'Create Item measures alias'

    assert_text 'Item measures alias was successfully created'
    click_on 'Back'
  end

  test 'should update Item measures alias' do
    visit item_measures_alias_url(@item_measures_alias)
    click_on 'Edit this item measures alias', match: :first

    fill_in 'Alias', with: @item_measures_alias.alias
    check 'Confirmed' if @item_measures_alias.confirmed
    click_on 'Update Item measures alias'

    assert_text 'Item measures alias was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Item measures alias' do
    visit item_measures_alias_url(@item_measures_alias)
    click_on 'Destroy this item measures alias', match: :first

    assert_text 'Item measures alias was successfully destroyed'
  end
end
