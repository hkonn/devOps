DevOps Drøft:

Man kan sette opp automatiserte tester med github actions. Med en enkel .yml fil kan man sette github til å ikke ta imot push/merge til main dersom testene feiler. Eventuelt kan man også sette opp bestemte “regler” for f.eks. kode-review og klarering før endringer pushes til main.
Man kan legge til “Branch protection”-regler i github for å hindre merge før et satt antall av brukere har godkjent. Dette bidrar da til bedre kode helhetlig.
Man kan ta i bruk Trunk based development ved at hele teamet jobber på kortvarige branches for så å merge de inn i main og samtidig ta i bruk kode-review og automatiserte tester for å unngå problemer.

SkalBank har for det første null logging eller noen feedback på noe som skjer i koden sin og derfor er det umulig å finne hva som skjer feil når noe krasjer. De har heller ikke satt opp github actions eller skrevet noen tester. De burde sette opp automatisering og forholde seg til god arbeidsflyt med kode-review samtidig som de burde sette opp en standard for å jobbe innen Trunk based development.
Konsekvensen med dette kan være mye feil i koden, uventede krasjer, dårlig samarbeid mellom utviklerne og tap av data/kode.

Terraform Drøft:

“Hvorfor funket terraformkoden i dette repoet for "Jens" første gang det ble kjørt? Og hvorfor
feiler det for alle andre etterpå, inkludert Jens etter at han ryddet på disken sin og slettet
terraform.tfstate filen?”

Fordi første gang han kjørte koden opprettet han en bucket og senere fikk feil fordi han prøvde å opprette en bucket med samme navn istedet for å oppdatere bucketen.

Sensor ønsker å lage sin bucket ved hjelp av CLI. Sensor har aws kommandolinje installert på sin lokale maskin. Hva må sensor gjøre for å konfigurere AWS nøkler/Credentials? Anta at Sensor sin AWS bruker ikke har nøkler/credentials fra før.

Sensor må kjøre: aws s3api create-bucket --bucket navn --region eu-west-1

Sensor vil å lage en fork av ditt repo
Beskriv hva sensor må gjøre etter han/hun har laget en fork for å få pipeline til å fungere
for i sin AWS/gitHub konto.
Hvilke verdier må endres i koden?
Hvilke hemmeligheter må legges inn i repoet. Hvordan gjøres dette?

Sensor må kjøre commit og push til eget repo for å få testene til å kjøre og pipelinen til å funke.
provider.tf må endres der den peker til pgr301-haha028 til å peke til riktig repo samtidig som yml filene som peker til master i stedet for main grunnet git-problemer litt for sent i prosjektet.
man må legge inn access id og secret access key inn som github secrets. Dette gjøres ved å gå på settings > secrets på github repoet ditt og klikk new secret.
Hva vil kommandolinje for å bygge et container image være? Fullfør …

docker build . (Dersom du er i riktig dir, hvis ikke : docker build [path])




