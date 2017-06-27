Présentation:

Ce projet est un mini prototype d'un projet de fin d'études http://labs.redlean.io/project/perio-machine-learning/ proposé par la société Redlean http://redlean.io/eng/ .

Ce projet consiste à prédire les codes CCAM de traitements bucco-dentaires à partir un arbre de décision, dans le but d'aider les dentistes à prendre leurs décisions et avoir une prévision sur les actes à réaliser pour un état de santé et une infection bien déterminés du patient en consultation.

En général, un arbre de décision est un graphique qui permet de représenter les choix et leurs résultats sous la forme d'un arbre. Les nœuds du graphique représentent un événement ou un choix et les bords du graphique représentent les règles ou conditions de décision. Il est principalement utilisé dans les applications d'apprentissage automatique et d'exploration de données en utilisant R.

Ce projet contient trois fichiers :

-	Le modèle de données : est un fichier de type csv et représente la  base de connaissance qui contient le code CCAM à prédire, l’âge du patient, l’infection du dent ainsi que d’autres données qui ont une grande influence sur le choix de l’acte telles-que le diabète, l’hypertension, le pacemaker, les crises, le dialyse, la pathologie, la thyroïdienne, la spasmophilie, la dermathologie, le saignement spontané, les problèmes cardiaques, le rhumatisme, l’asthme, la pathologie de foie, l’hypathie, dents sensibles, dents mobiles.

-	Le fichier « ctree.R » : est un script R permettant d’avoir un arbre de décision en utilisant la commande« ctree».

-	Le fichier « rpart.R » : est un script R permettant d’avoir un arbre de décision en utilisant  la commande« rpart».

Etapes d’exécution

-	Faire un clone et télécharger le projet.
-	Ouvrir l’interface graphique de l’environnement R.
-	Ouvrir l’un des deux scripts R « ctree.R » ou « rpart.R »
-	Exécuter tout le script R en tapant la commande « source ("C:/Users/Asus/Desktop/rpart.R") » ou « source ("C:/Users/Asus/Desktop/ctree.R") »
-	 Exécuter les scripts étape par étape :

•	Installer le package « party» pour créer l’arbre de décision avec ctree ou le package « rpart » et « rpart. Plot » pour créer l’arbre de décision avec rpart en tapant la commande « install.packages("party") » ou « install.packages("rpart") » puis « install.packages("rpart.plot") ».
•	Accéder au modèle de données en exécutant la commande suivante DataAct<-read.csv(file.choose(),header=T,sep=','), la commande file.choose () de R permet d’ouvrir le fichier CSV, l'en-tête ici est vraie car le fichier CSV possède des en-têtes de colonne et sep = "," spécifie que les données sont séparées par des virgules.
•	Afficher les données de la variable « DataAct » contenant le modèle de données avec la commande « str(DataAct) ».
•	Créer l’arbre de décision en tapant la commande :
CCAM_tree<-rpart(CODE_CCAM~., DataAct,method="class")
Ou 
CCAM_tree <- ctree(CODE_CCAM ~ INFECTION + AGE + DIABETE + PACEMAKER + HYPER_ARTERIELLE + hypertension + crises + dialyse + pathologie + thyro.dienne + spasmophilie + dermathologie + saignement_spontan + problemes_cardiaques + rhumatisme + asthme + pathologie_foie + hypathie + dents_sensibles + dents_mobiles , data=DataActe).

La syntaxe de base pour créer un arbre de décision avec « ctree » est « ctree(formula, data) » et la description des paramètres utilisés  est comme suit : formula est une formule décrivant le prédicteur et les variables de réponse, data est le modèle de données utilisé.

La syntaxe de base pour créer un arbre de décision avec « rpart » est « rpart ( formula , data = , method =, control =) » où
Formula = résultat ~ predictor1 + predictor2 + predictor3 + ect, data = spécifie le modèle de données, On spécifie method = "Classe" pour un arbre de classification et "anova" pour un arbre de régression,  control = spécifie des paramètres optionnels pour contrôler la croissance de l'arbre. Par exemple, control = rpart.control (minsplit = 30, cp = 0.001) exige que le nombre minimal d'observations dans un noeud soit 30 avant de tenter une division et qu'une division doit diminuer le manque global d'ajustement d'un facteur de 0,001 ( Facteur de complexité des coûts) avant d'être tenté.

•	Afficher l’arbre de décision (texte) avec la commande « print(CCAM_tree) »

•	Afficher l’arbre de décision (graphique) avec la commande « plot(CCAM_tree,uniform=TRUE,main="Classification Tree with ctree") ».

uniform : si TRUE, arbre avec arêtes verticales toutes de même longueur, sinon, en fonction de l'erreur liée au split (défaut = FALSE).

•	Examiner les résultats ou le bon nombre de feuilles avec la validation croisée grâce à la fonction « printcp »  pour le script « rpart.R»
 
Une courbe sera affichée et indique le taux de mauvaises classifications relativement au score d'origin estimé par la validation croisée. Les barres d'erreur autour de chaque estimation sont aussi obtenues par validation croisée.

•	Le package rpart propose des fonctions d'affichage relativement limitées. On préfère donc s'appuyer sur rpart.plot, en particulier sur sa fonction prp: prp(CCAM_tree,extra=1)
 
•	Réaliser des prévisions sur de nouvelles données, en s'appuyant sur la fonction predict. Par défaut, la fonction estime les probabilités d'appartenance aux classes pour chaque observation (simplement par le ratio dans la feuille correspondante), en tapant la commande suivante : « predict(CCAM_tree, type="class") »
 
•	Evaluer les performances de l'arbre simplifié en utilisant la procédure de type validation croisée intégrée dans rpart pour choisir la complexité de l'arbre. Le principe est de s'appuyer sur la fonction predict et sur la fonction table pour obtenir une matrice de confusion, comme suit « table(DataAct$CODE_CCAM, predict(CCAM_tree, type="class")) »
 
