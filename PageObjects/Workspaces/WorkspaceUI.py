    #  _START_BUTTON = (By.CSS_SELECTOR, "#app .px-4 a")
START_BUTTON = "xpath://button[@class='hidden px-3 py-2 text-white bg-teal-800 rounded-md shadow-md md:block hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-teal-600']"
CREATE_NEW_WORKSPACE_BUTTON = "css:.font-medium button"
#CREATE_NEW_WORKSPACE_BUTTON = "xpath://button[@data-intercom-target='project-overview-workspaces-new']//*[name()='svg']//*[name()='path' and contains(@fill,'currentCol')]"
#  _WORKSPACE_EDIT_BUTTON = (By.CSS_SELECTOR, "[data-icon='chevron-down']")
WORKSPACE_EDIT_BUTTON = "xpath://button[@class='block text-gray-700 hover:text-gray-900 focus:outline-none focus:ring']//*[name()='svg']"
# _RENAME_WORKSPACE_BUTTON = (By.CSS_SELECTOR, ".mr-3 .hover\\:bg-gray-600")
RENAME_WORKSPACE_BUTTON = "xpath://button[@class='block pr-4 pl-4 w-full text-sm leading-loose text-left hover:bg-gray-100 hover:text-gray-800']"
# _DELETE_WORKSPACE_BUTTON = (By.CSS_SELECTOR, ".mr-3 .text-red-600")
DELETE_WORKSPACE_BUTTON = "xpath://button[@class ='block pr-4 pl-4 w-full text-sm leading-loose text-left text-red-600 hover:bg-red-600 hover:text-white disabled:text-gray-600 disabled:bg-white disabled:cursor-not-allowed']"
RENAME_FIELD = "css:.vue-portal-target input"
CONFIRMATION_BUTTON = "css:#confirm-create-button"
NEW_WORKSPACE_NAME_FIELD = "css:[placeholder='Workspace name']"
# _DELETE_WORKSPACE_FIELD = (By.CSS_SELECTOR, ".h-12")
DELETE_WORKSPACE_FIELD = "xpath://input[@type='text']"
# _CREATE_PROJECT_BUTTON = (By.CSS_SELECTOR, ".hidden.px-3")
CREATE_PROJECT_BUTTON = "xpath://span[normalize-space()='New project']"
SEARCH_BUTTON = "css:[data-icon='search']"
SEARCH_FIELD = "css:[type=text]"
CONFIRM_DELETE_PROJECT_BUTTON = "css:#confirm-delete-button"
# _CANCEL_PROJECT_DELETION_BUTTON = (By.CSS_SELECTOR, "form [type=button]")
CANCEL_PROJECT_DELETION_BUTTON = "xpath://button[normalize-space()='Cancel']"
PROJECT_PAGE_TITLE = "css:#app h1.leading-tight.truncate"
NO_PROJECT_FOUND_MSG = "css:#app h1.block"
# _NUMBER_OF_PROJECTS_IN_WORKSPACE_BLOCK = (By.CSS_SELECTOR, "span:nth-child(2)")
NUMBER_OF_PROJECTS_IN_WORKSPACE_BLOCK = "xpath://div[@class='mt-6 space-y-1 overflow-y-auto max-h-[25.7rem]']/a/span"
# _DROP_DOWN_BUTTON = (By.CSS_SELECTOR, ".justify-right button svg")
DROP_DOWN_BUTTON = "xpath://div[1]/div[3]/div[1]/div[2]/div[1]/button[1]//*[name()='svg']"
DELETE_PROJECT_BUTTON = "xpath:(//div[@class='md:grid md:grid-cols-12 md:gap-x-5 lg:gap-x-6 xl:gap-x-7 sm:mt-4 md:mt-8 lg:mt-16']//button[text()='Delete project'])[1]"
DELETE_PROJECT_BUTTON1 = "xpath://button[@id='confirm-delete-button']"
#  _WORKSPACE_LIST = (By.CSS_SELECTOR, ".mt-6 a")
WORKSPACE_LIST = "xpath://div[@class='mt-6 space-y-1 overflow-y-auto max-h-[25.7rem]']/a/span[@class='mr-3 truncate']"
PROJECTS_BLOCK = "xpath://h1/a"
#  _PROJECTS_BLOCK = (By.XPATH,"//a[@class='px-1.5 hover:text-purple-600 whitespace-nowrap cursor-pointer text-purple-600 border-b-2 border-purple-600']")
PROJECTS_TITLES = "css:h1 a"
TEMPLATES_BLOCK = "xpath://ul[@class='absolute right-0 z-20 py-1 mt-2 w-auto min-w-full text-left text-gray-700 whitespace-nowrap bg-white rounded-md ring-1 ring-black ring-opacity-5 shadow-lg origin-top-right focus:outline-none']//p[@class='text-base font-normal group-hover:text-white']"
SEARCH_FIELD = "css:[type=text]"
PROJECTS_TYPE = "xpath//div[@class='select-header']/h4"
START_EDITING = "xpath://label[@for='select-single-outcome']//*[text()='START EDITING']"
SAVE_AND_EXIT_BUTTON = "xpath://a[@class='flex items-center']"
NO_OF_PROJECTS_IN_WORKSPACEBLOCK = "xpath://span[text()='test']/following-sibling::span"
#//span[normalize-space()='18']
PROJECTS_TITLES = "xpath://h1[@class='block mb-8 text-3xl font-medium leading-none text-gray-900']"

nameTxt         =   "xpath://input[@data-qa='name']"
emailTxt        =   "xpath://input[@data-qa='email']"
subjectTxt      =   "xpath://input[@data-qa='subject']"
messagetxt      =   "xpath://textarea[@data-qa='message']"
uploadfile      =    "xpath://input[@type='file']"
submitbtn       =    "xpath://input[@name='submit']"
ContactLink     =    "xpath://a[@href='/contact_us']"
TestCasesLink     =    "xpath://a[@href='/test_cases']"
testlabel         =           "xpath://h2[@class='title text-center']/b"