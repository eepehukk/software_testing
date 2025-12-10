# Testisuunnitelma NIKO & Eemil

## 1. Base details

- Pohjana testisuunnitelmaan käytetään tehtävänantoia & ohjeistusta sivulta: `https://www.valagroup.com/fi/blogi/opas-testaussuunnitelman-laatimiseen-ja-ilmainen-malli/?utm_term=testaussuunnitelma&utm_campaign=Traffic&utm_source=adwords&utm_medium=ppc&hsa_acc=9088882292&hsa_cam=812356547&hsa_grp=146254598855&hsa_ad=647340546633&hsa_src=g&hsa_tgt=kwd-923896387183&hsa_kw=testaussuunnitelma&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gad_source=1&gad_campaignid=812356547&gbraid=0AAAAADc-lK9XIE2jFib9E_bvtqhU4RHhQ&gclid=Cj0KCQiAq7HIBhDoARIsAOATDxASIZo5tsvg5CqZ3kOms2Ya5p6PFI34i3kxshJFwT3NpdgTBpFQ3b4aAhPQEALw_wcB`
- Projektin perustiedot.

## 2. Test Context

Testers: Niko Iljin & Eemil Hukkanen

The main goal of this testing project is to ensure reliable user experience. Its done by identifying bugs in the given application and ensure overall quality during the development of the application. 

Testing focuses on the developement version of the application, specifically on critical functionalities and identifies what will not be tested in the developement environment as well what should be tested before release. 

The objective is to provide feedback to the development team about te current state of the application and support bug detection before deployment to production.


### 2.1 In scope
#### Manual testing
In this project manual testings purpose was to find features that were not working properly. Usually manual testings idea is to  

#### API and E2E testing
API and end to end testing to be made as happy path testing.

A working CI pipeline to run the API tests automatically.

Another pipeline for a selection of end to end tests tagged as smoke tests to be run on push to main branch and run a full test suite nightly. With one step for running non-functional automated tests.


### 2.2 Out of scope

We will not be testing rare edge cases, error handling scenarios, all invalid inputs, cross browser, device compatibility, performance, load, stress testing, security testing, scalability, database recovery.


## 3 Testing schedule

1. Testing plan
2. manual testing
3. Automatic testing
4. API testing
5. CI pipeline

## 4 Practicalities

We tackled this project with regular meets in every week. We used to meet atleast twice a week to work on this project. For E2E and API testing we used Robot Framework and couple extension libaries such as Browser, Collectios and RequestsLibary. During project we worte down thoughts for testingplan but we decided to leave this part for last. In the end 

## 5 työnjako

Tehtiin yhdessä manuaalista testausta ja keskusteltiin mahdoillissta bugeista. Selvitimme yhdessä myös mitä tulee bug reporttiin tehdä ja eemil kirjasi raportit.

Alkuvaiheissa työstimme yhdessä Dockerfilen tekoa testien ympäristöä varten. Alussa kohtasimme suuria haasteita monen epämääräisen asian kanssa. Selvitimme haasteet jotka lopulta liittyi kontin oikeuksiin päästä käsiksi frontend ja backend konttiin. Hieman jouduimme muokata koodia. Käytimme tähän kaksi työpäivää.

automaattisissa e2e testeissä työnjaossa eemil hoiti koodin ylös kirjoittamisen ja toistettavuuden. Yhdessä suunnittelimme ja ratkoimme isoimmat ongelmat, kuten miten painaa nappia Robot framworkilla, jos napilla ei ole id:tä tai nimeä.