# frozen_string_literal: true

require 'application_system_test_case'

class BrandAliasesTest < ApplicationSystemTestCase
  setup do
    @brand_alias = brand_aliases(:one)
  end

  test 'visiting the index' do
    visit brand_aliases_url
    assert_selector 'h1', text: 'Brand aliases'
  end

  test 'should create brand alias' do
    visit brand_aliases_url
    click_on 'New brand alias'

    fill_in 'Alias', with: @brand_alias.alias
    check 'Confirmed' if @brand_alias.confirmed
    click_on 'Create Brand alias'

    assert_text 'Brand alias was successfully created'
    click_on 'Back'
  end

  test 'should update Brand alias' do
    visit brand_alias_url(@brand_alias)
    click_on 'Edit this brand alias', match: :first

    fill_in 'Alias', with: @brand_alias.alias
    check 'Confirmed' if @brand_alias.confirmed
    click_on 'Update Brand alias'

    assert_text 'Brand alias was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Brand alias' do
    visit brand_alias_url(@brand_alias)
    click_on 'Destroy this brand alias', match: :first

    assert_text 'Brand alias was successfully destroyed'
  end
end
