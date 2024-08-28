import time
from behave import *
from features.pages.appointment_confirm_page import AppointmentConfirm
from features.pages.appointment_page import AppointmentPage
from selenium.webdriver.support import expected_conditions as EC

@then('I should be redirected appointment page')
def i_should_be_redirected_appointment_page(context):
    context.appointment_page = AppointmentPage(context.driver)
    context.appointment_page.verify_appointment_page_displayed()

@then('I click on make appointment button')
def i_click_on_make_appointment_button(context):
    context.appointment_page.click_appointment_button()

@then('I select a facility "{facility}"')
def i_select_a_facility(context, facility):
    time.sleep(2)
    context.appointment_page.select_a_facility_by_value(facility)


@then("I enter all details for appointment")
def i_enter_all_details_for_appointment(context):
    context.appointment_page.select_hospital_readmission()
    context.appointment_page.select_hospital_program()
    context.appointment_page.select_visit_date("20/08/2024")
    context.appointment_page.enter_comment("Automation testing")

@then("Click on book appointment")
def click_book_appointment(context):
    context.appointment_page.click_book_appointment_button()
    time.sleep(2)


@then("Verify appointment is booked successfully")
def step_impl(context):
    context.appointment_confirm_page = AppointmentConfirm(context.driver)
    context.appointment_confirm_page.verify_appointment_confirm_msg()
    time.sleep(2)