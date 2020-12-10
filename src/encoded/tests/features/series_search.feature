@title
Feature: Title

    Scenario: Title updates
        When I visit "/series-search"
        And I wait for the content to load
        Then the title should contain the text "Series search – ENCODE"

@Summary @usefixtures(index_workbook)
Feature: Series search
    Background:
        When I visit "/series-search"
        And I wait for the content to load


    Scenario: Series search
        Then the title should contain the text "Series search"
        Then I should see 1 element with the css selector ".series-tabs"

    Scenario: Series search buttons and links
        When I visit "#TreatmentConcentrationSeries"
        Then I should see exactly one element with the css selector ".tab-description"
        Then I should see exactly one element with the css selector ".tab-nav-TreatmentConcentrationSeries"
        Then I should see exactly one element with the css selector ".series-wrapper"
