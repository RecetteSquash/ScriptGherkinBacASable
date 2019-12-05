# Automation priority: null
# Automation status: TRANSMITTED
# Test case importance: LOW
# language: en

Feature: Cette-Fois-Ci-Ca-Marche
  Everybody wants to know when it's Friday

  Scenario: Sunday isn't Friday
    Given today is Sunday
    When I ask whether it's Friday yet
    Then I should be told "Nope"