Présentation:

Ce projet est un mini prototype d'un projet de fin d'études http://labs.redlean.io/project/perio-machine-learning/ proposé par la société Redlean http://redlean.io/eng/ .

Ce projet consiste à prédire les codes CCAM de traitements bucco-dentaires à partir un arbre de décision, dans le but d'aider les dentistes à prendre leurs décisions et avoir une prévision sur les actes à réaliser pour un état de santé et une infection bien déterminés du patient en consultation.

En général, un arbre de décision est un graphique qui permet de représenter les choix et leurs résultats sous la forme d'un arbre. Les nœuds du graphique représentent un événement ou un choix et les bords du graphique représentent les règles ou conditions de décision. Il est principalement utilisé dans les applications d'apprentissage automatique et d'exploration de données en utilisant R.

Ce projet contient trois fichiers :
-	Le modèle de données : est un fichier de type csv et représente la  base de connaissance qui contient le code CCAM à prédire, l’âge du patient, l’infection du dent ainsi que d’autres données qui ont une grande influence sur le choix de l’acte telles-que le diabète, l’hypertension, le pacemaker, les crises, le dialyse, la pathologie, la thyroïdienne, la spasmophilie, la dermathologie, le saignement spontané, les problèmes cardiaques, le rhumatisme, l’asthme, la pathologie de foie, l’hypathie, dents sensibles, dents mobiles.

-	Le fichier « ctree.R » : est un script R permettant d’avoir un arbre de décision en utilisant la commande« ctree».

-	Le fichier « rpart.R » : est un script R permettant d’avoir un arbre de décision en utilisant  la commande« rpart».

Etapes d’éxécution
