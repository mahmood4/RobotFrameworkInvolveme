from selenium import webdriver
from webdriver_manager.firefox import GeckoDriverManager


def disable_download_dialog():
    #driver = webdriver.Firefox(executable_path=GeckoDriverManager().install())
    driver_path = GeckoDriverManager().install()

    print("   ",driver_path)
    return driver_path
