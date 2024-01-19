*** Settings ***

Library SeleniumLibrary

Resource ../Resources/Login_resources.robot

Library DataDriver ../TestData/DDTXLS.xlsx encoding="ISO-8859-1"

Library String

Suite Setup Login_resources.Start TestCase

Suite Teardown Login_resources.Finish TestCase

Test Template Invalid login