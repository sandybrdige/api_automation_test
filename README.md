Environment:

Win10_X64

python 3.6.3

requests 2.18.4

behave 1.2.6

allure2.13.4

websocket 0.58.0

allure_behave 2.8.40

Run_commandlines:

behave -f allure_behave.formatter:AllureFormatter -o report_file ./features

allure generate --clean -o "reports" "report_file"

allure open reports