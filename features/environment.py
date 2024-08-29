from selenium import webdriver

def before_all(context):
    # Setup code before all scenarios
    pass

def after_all(context):
    # Teardown code after all scenarios
    context.driver.quit()
    print("Closed WebDriver and cleaned up after all tests.")

def before_scenario(context, scenario):
    options = webdriver.ChromeOptions()

    # start browser maximized
    options.add_argument("--start-maximized")
    #options.add_argument("--headless")

    # Initialize the WebDriver instance
    context.driver = webdriver.Chrome(options=options)

    context.allure_report_dir = "features/reports"
    print("Initialized WebDriver and other global settings before all tests.")

def after_scenario(context, scenario):
    # Teardown after each scenario
    pass