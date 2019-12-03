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
        return null;
    }

    @Given("^today is Sunday$")
    public void today_is_Sunday() throws Throwable {
        today = "Sunday";
        throw new PendingException();
    }

    @When("^I ask whether it's Friday yet$")
    public void i_ask_whether_it_s_Friday_yet() throws Throwable {
        actualAnswer = IsItFriday.isItFriday(today);
        throw new PendingException();
    }

    @Then("^I should be told \"([^\"]*)\"$")
    public void i_should_be_told(String expectedAnswer) throws Throwable {
        assertEquals(expectedAnswer, actualAnswer);
       System.out.println("FRIDAYYY");
       throw new PendingException();
    }

  }