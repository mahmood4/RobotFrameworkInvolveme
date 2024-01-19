from selenium import webdriver
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.chrome import ChromeDriverManager


def disable_download_dialog():
    #driver = webdriver.Firefox(executable_path=GeckoDriverManager().install())
    driver_path = GeckoDriverManager().install()
    print("Firefox Path   ",driver_path)
    return driver_path

def get_chromedriver_path():
    driver_path = ChromeDriverManager().install()
    print("Chrome path",driver_path)
    return  driver_path