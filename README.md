# DDNS-API-pour-CloudFlare



Ce script a pour but de mettre à jour votre IP sur le service DNS de CloudFlare automatiquement tous les X secondes !



Etape 1 : ajoutez un enregistrement A pour votre domaine racine afin que celui-ci soit résolu !



Etape 2 : procurez-vous votre API Global CloudFlare



Etape 3 : Exécuter le Script DDNS.sh sur votre serveur



Différentes questions vous seront proposées répondez si comme suit :



Fournisseur de services DNS dynamique : sélectionnez « autre ».

Serveur DNS dynamique : laissez vide.

Protocole de mise à jour DNS dynamique : sélectionnez « Dyndns2 » (il se trouve qu'il s'agit de la première entrée).

Nom d'utilisateur pour le service DNS dynamique : laissez vide.

Mot de passe pour le service DNS dynamique : laissez vide.

Ressaisissez le mot de passe pour vérifier : laissez vide.

Interface réseau utilisée pour le service DNS dynamique : laissez ce champ vide.

Noms de domaines complets DynDNS : laissez ce champ vide.



Ensuite :



Exécuter ddclient sur PPP connect ? : sélectionnez « Non » (la valeur par défaut est « Oui »).

Exécutez ddclient en tant que démon : sélectionnez « Oui » (la valeur par défaut est « Non »).

Intervalle entre les exécutions de ddclient : laissez « 300 » (si vous voulez un intervalle de 5 minutes).



Répondez aux questions domaine etc.. qui vous seront posées et normalement votre serveur mettra à jour l'ip sur le server DNS de CloudFlare tous les X secondes que vous aurez configuré !


::Tiimoon::
