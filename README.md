#Background:
Stack used is Ruby, Selenium WebDriver, Cucumber.
As a framework boilerplate, I used this repository: https://github.com/jonathanchrisp/selenium-cucumber-ruby-kickstarter

#Installation
      1. Ensure you have the firefox or chrome browser installed - install chromedriver if using chrome
      2. Ensure you have ruby installed (built and run with 2.5.0)
      3. Ensure you have rubygems and the bundler installed
      4. Navigate to the cloned project in your terminal
      5. Run 'bundle install'
      6. Run 'bundle exec cucumber'

As a report, the test will not output anything in the console during execution, but will create a report.json file after test execution.

If you want to see console output during the test execution, go to config/cucumber.yml and instead of "--format json -o report.json" put "--format pretty".

Please note that this will run the feature in the chrome browser as default. To run this test in firefox just pass the argument:
"-p firefox"  e.g. "bundle exec cucumber -p firefox"
