# Testisuunnitelma NIKO & Eemil

## 1. Base details

- Pohjana testisuunnitelmaan käytetään tehtävänantoia & ohjeistusta sivulta: `https://www.valagroup.com/fi/blogi/opas-testaussuunnitelman-laatimiseen-ja-ilmainen-malli/?utm_term=testaussuunnitelma&utm_campaign=Traffic&utm_source=adwords&utm_medium=ppc&hsa_acc=9088882292&hsa_cam=812356547&hsa_grp=146254598855&hsa_ad=647340546633&hsa_src=g&hsa_tgt=kwd-923896387183&hsa_kw=testaussuunnitelma&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gad_source=1&gad_campaignid=812356547&gbraid=0AAAAADc-lK9XIE2jFib9E_bvtqhU4RHhQ&gclid=Cj0KCQiAq7HIBhDoARIsAOATDxASIZo5tsvg5CqZ3kOms2Ya5p6PFI34i3kxshJFwT3NpdgTBpFQ3b4aAhPQEALw_wcB`
- Projektin perustiedot.

## 2. Test Context

Testers: Niko Iljin & Eemil Hukkanen

Testauksen tavoitteena on tunnistaa sovelluksen bugeja ja varmistaa sovelluksen laatu sovelusta päivittäessä. Tärkeää käyttäjäkokemuksen varmistamisessa.

Testaus painottuu devausversioon ja siellä kriittisiin ja muutettuihin toiminnallisuuksiin.

Nämä testit Testaavat devaus versiota ja eivät tavoittele 100% testikattavuutta. Suunnitelmassa huomioidaan tilanteita mitä ei testata devaus versiossa ja mitä tulisi testata ennen julkistamista.

testauken tavoitteena on tarjota devaustiimille palautetta sovelluksen tilasta ja tukea virheiden korjaamista ennen tuotantoon vientiä.

### 2.1 In scope

Manual testing to test all functionalities work as expexted and usability testing for trying to test all user usages. Consisting autenthication, todo list and todo item functionalities

API and end to end testing to be made as happy path testing.

A working CI pipeline to run the API tests.

Another pipeline for a selection of end to end tests tagged as smoke tests to be run on push to main branch and run a full test suite nightly. With one step for running non-functional automated tests.


### 2.2 Out of scope

For manual testing we dont 

- Mitä tiedustetusti ei haluta testata

## 3 Preparing testing
- TODO list what should be done

## 4 Practicalities
- Työkalut & raportointi & tuotokset / tulokset

## 5 työnjako

Tehtiin yhdessä manuaalista testausta ja keskusteltiin mahdoillissta bugeista. Selvitimme yhdessä myös mitä tulee bug reporttiin tehdä ja eemil kirjasi raportit.