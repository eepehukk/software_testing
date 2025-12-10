# Testisuunnitelma NIKO & Eemil

## 1. Base details

- Basis for test-plan we used instructions found on course platform and trhough this link: `https://www.valagroup.com/fi/blogi/opas-testaussuunnitelman-laatimiseen-ja-ilmainen-malli/?utm_term=testaussuunnitelma&utm_campaign=Traffic&utm_source=adwords&utm_medium=ppc&hsa_acc=9088882292&hsa_cam=812356547&hsa_grp=146254598855&hsa_ad=647340546633&hsa_src=g&hsa_tgt=kwd-923896387183&hsa_kw=testaussuunnitelma&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gad_source=1&gad_campaignid=812356547&gbraid=0AAAAADc-lK9XIE2jFib9E_bvtqhU4RHhQ&gclid=Cj0KCQiAq7HIBhDoARIsAOATDxASIZo5tsvg5CqZ3kOms2Ya5p6PFI34i3kxshJFwT3NpdgTBpFQ3b4aAhPQEALw_wcB`


## 2. Test Context

Testers: Niko Iljin & Eemil Hukkanen

The main goal of this testing project is to ensure reliable user experience. Its done by identifying bugs in the given application and ensure overall quality during the development of the application. 

Testing focuses on the developement version of the application, specifically on critical functionalities and identifies what will not be tested in the developement environment as well what should be tested before release. 

The objective is to provide feedback to the development team about te current state of the application and support bug detection before deployment to production.


### 2.1 In scope
#### Manual testing
In this project manual testings purpose was to find features that were not working properly. Usually manual testings idea is to test users experience and find out problems that users might find out.

#### API and Automated testing
API and end to end testing to be made as happy path testing.

A working CI pipeline to run the API tests automatically.

Another pipeline for a selection of end to end tests tagged as smoke tests to be run on push to main branch.


### 2.2 Out of scope

We will not be testing rare edge cases, error handling scenarios, all invalid inputs, cross browser, device compatibility, performance, load, stress testing, security testing, scalability, database recovery.


## 3 Testing schedule

1. Testing plan
2. manual testing
3. Automatic testing
4. API testing
5. CI pipeline
6. Testing plan additions

## 4 Practicalities

We tackled this project with regular meets in every week. We used to meet atleast twice a week to work on this project. For E2E and API testing we used Robot Framework and couple extension libaries such as Browser, Collectios and RequestsLibary. During project we worte down thoughts for testingplan but we decided to leave this part for last. 

In the final meters of the project we realized that based on course example we would need to change the whole structure of our testing "folders". In the end we just modified our solution that we kept our tests folder in the root and we split under tests folder api and e2e folders. This whole little modification messe up our pipeline etc but in the end we made it to work.

## 5 Division of labor

Mostly this whole project is done in Jyväskylä Universitys libary side by side. Couple individual commit here and there and last polishes has been done in zoom.

We performed manual testing together and discussed potential bugs. We also determined the requirements for bug reports, which Eemil then documented.

In the early stages, we collaborated on creating a Dockerfile for the test environment. Initially we faced significant challenges regarding several issues. We resolved these challenges, which were ultimately related to the container's permissions to access the frontend and backend containers. This required slight modifications to the code, and we spent two working days on this task. (In the end we deleted these code modifications because we realized it wasnt allowed). Currently our tests folder order and Dockerfile is mostly written by Niko.

Regarding the automated E2E tests and division of labor, Eemil was responsible for writing the code. However we planned the tests and solved the major technical issues together. Such as determining how to click a button using Robot Framework when the button lacked an ID or name (Please improve those buttons that they have ids and names. Also I know we should use data attributes more but still please I need easier options :D. This is my only request Sami from Eemil).

Regarding the automated E2E tests and division of labor, Niko was responsible for writing the code. However we planned the tests and solved the major technical issues together.