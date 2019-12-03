package bindings;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static org.junit.Assert.assertEquals;

public class IsItFriday {
    private String today;
    private String actualAnswer;

    private static String isItFriday(String today) {
        if (today != "Friday"){
            return "Nope";
        }
    }

    @Given("^today is Sunday$")
    public void today_is_Sunday()  {
        today = "Sunday";
    }

    @When("^I ask whether it's Friday yet$")
    public void i_ask_whether_it_s_Friday_yet()  {
        actualAnswer = IsItFriday.isItFriday(today);
    }

    @Then("^I should be told \"([^\"]*)\"$")
    public void i_should_be_told(String expectedAnswer) {
        assertEquals(expectedAnswer, actualAnswer);
       System.out.println("FRIDAYYY");
    }

  }