# Démarche pour éxécuter nos scripts
- Pour éxécuter avec SQLPlus, se mettre dans le dossier contenant les sources et lancez un invite de commande puis commencez par vous connecter au CIE avec l'identifiant admin21 (mot de passe : `admin`)

sqlplus admin21@cienetdb

- Afin de pouvoir lancer nos scripts de démonstration, veuillez commencer par éxécuter le fichier `init.sql`.  

SQL>@init


- Pour lancer le script de démonstration du Directeur, éxécutez le fichier `demoDirecteur.sql` en vous connectant en temps que user1 (mot de passe : `user`) : 

sqlplus user1@cienetdb
SQL>@demoDirecteur


- Pour lancer le script de démonstration de l'invité, éxécutez le fichier `demoInvite.sql` en vous connectant en temps que user7 (mot de passe : `user`) : 

sqlplus user7@cienetdb
SQL>@demoInvite


- Pour lancer le script de démonstration de spectateur, éxécutez le fichier `demoSpectateur.sql` en vous connectant en temps que user4 (mot de passe : `user`) : 

sqlplus user4@cienetdb
SQL>@demoSpectateur


- Pour lancer le script de démonstration du vendeur de ticket, éxécutez le fichier `demoVendeur.sql` en vous connectant en temps que user2 (mot de passe : `user`) : 

sqlplus user2@cienetdb
SQL>@demoVendeur
