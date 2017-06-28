Présentation:
Ce projet est un mini prototype d'un projet de fin d'études http://labs.redlean.io/project/perio-machine-learning/ proposé par la société Redlean http://redlean.io/eng/ .

Ce projet consiste à prédire les codes de traitements médicaux à partir d’un arbre de décision, dans le but d'aider les médecins à prendre leurs décisions et avoir une prévision sur les traitements à réaliser pour un état de santé et une infection bien déterminés du patient en consultation.
En général, un arbre de décision est un graphique qui permet de représenter les choix et leurs résultats sous la forme d'un arbre. Les nœuds du graphique représentent un événement ou un choix et les bords du graphique représentent les règles ou les conditions de décision. 
 Ce projet contient trois fichiers :
-	Le modèle de données : est un fichier de type csv et représente la  base de connaissance qui contient le code médicaux à prédire, l’infection, l’âge du patient ainsi que d’autres données collectées de son bilan médical qui ont une grande influence sur le choix de l’acte telles-que le diabète, l’hypertension, le pacemaker, les crises, le dialyse, la pathologie, la thyroïdienne, la spasmophilie, la dermatologie, le saignement spontané, les problèmes cardiaques, le rhumatisme, l’asthme, la pathologie de foie, l’hypatie.
-	Le fichier « ctree.R » : est un script R permettant d’avoir un arbre de décision en utilisant la commande« ctree»
-	Le fichier « rpart.R » : est un script R permettant d’avoir un arbre de décision en utilisant  la commande« rpart»
Etapes d’exécution
-	Faire un clone et télécharger le projet.
-	Ouvrir l’interface graphique de l’environnement R.
-	Ouvrir l’un des deux scripts R « ctree.R » ou « rpart.R »
-	Exécuter le script R en tapant la commande « source ("C:/Users/Asus/Desktop/rpart.R") » ou « source ("C:/Users/Asus/Desktop/ctree.R") »
-	 Exécuter le script R étape par étape :
•	Installer le package « party» pour créer l’arbre de décision avec ctree ou le package « rpart » et « rpart. Plot » pour créer l’arbre de décision avec rpart en tapant la commande « install.packages("party") » ou « install.packages("rpart") » puis « install.packages("rpart.plot") »
•	Accéder au modèle de données en exécutant la commande suivante DataAct<-read.csv(file.choose(),header=T,sep=','), la commande file.choose () de R permet d’ouvrir le fichier CSV, l'en-tête ici est vraie car le fichier CSV possède une en-tête et sep = "," spécifie que les données sont séparées par des virgules.
•	Afficher les données de la variable « DataAct » contenant le modèle de données avec la commande « str(DataAct) ».
![1](https://user-images.githubusercontent.com/29728117/27640810-1f411204-5c12-11e7-8544-ad08c3571c88.PNG)
