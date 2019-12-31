# Automation priority: 9
# Automation status: TRANSMITTED
# Test case importance: LOW
Feature: Are 1 and 1 2?
  feature for testing TF Framework
  
  @TFSample
  Scenario: add two numbers
    Given first member is 1
    Given second member is 1
    Then sum should be 2