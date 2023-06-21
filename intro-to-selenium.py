# #!/usr/bin/env python
from selenium import webdriver
from selenium.webdriver.common.by import By

# Start the browser and navigate to http://automationpractice.com/index.php.
driver = webdriver.Firefox()
driver.get('https://www.uniqlo.com/uk/en/home')

driver.implicitly_wait(10)
reject_button = driver.find_element(By.CSS_SELECTOR, "#onetrust-reject-all-handler")
reject_button.click()

driver.find_element(By.CLASS_NAME,"algolia-search-input").send_keys("shirt")
search_button = driver.find_element(By.CSS_SELECTOR, "button.algolia-search-button")
search_button.click()

