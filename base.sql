CREATE DATABASE voyage;


use voyage;
GRANT ALL PRIVILEGES ON voyage.* TO '4504488_voyage'@'%' IDENTIFIED BY 'Miora0707';
FLUSH PRIVILEGES;

-----------------------------   CATEGORIE -----------------------------------------------
CREATE TABLE categories (
    categories_id INT AUTO_INCREMENT PRIMARY KEY,
    categorie varchar(255)
);


insert into categories values (null,'parc');
insert into categories values (null,'ville et ile');
--------------------------------//--------------------------------------------------------

----------------------------  VOYAGE ---------------------------------------------------------
CREATE TABLE voyages (
    voyages_id INT AUTO_INCREMENT PRIMARY KEY,
    date_depart varchar(255),
    date_arriver varchar(255),
    lieu varchar(255),
    transport varchar(255),
    paf float,
    descript varchar(255),
    categories_id int,
    photo_url varchar(355),
    jour int,
     FOREIGN KEY (categories_id ) REFERENCES categories(categories_id )
);

insert into voyages values (null,'2024-07-30','2024-08-07','Nosy Be','vehicule/avion',1300000,'Découvrez un vrai paradis, une destination merveilleuse pour vos vacances. Laissez-vous enchanter par la beauté et la tranquillité de ce lieu exceptionnel.',2,'/images/nosy be.jpg',8);
insert into voyages values (null,'2024-08-07','2024-08-13','Fianarantsoa','vehicule',400000,'Découvrez une ville enivrante et bien animée, où vous pourrez goûter à une variété de produits locaux délicieux.',2,'/images/fianaratsoa.jpg',6);
insert into voyages values (null,'2024-08-15','2024-08-24','Diego Suarez (Antsiranana)','vehicule',600000,'Si vous aimez vivre de nouvelles expériences, un voyage à Diego Suarez est ce qu il vous faut. Venez découvrir un lieu unique où l aventure et la découverte sont au rendez-vous.',2,'/images/Diego suarez.jpg',9);
insert into voyages values (null,'2024-08-25','2024-09-01',' Sainte Marie (Nosy Boraha)','vehicule/bateau',1100000 ,'Découverte de Sainte MarieSainte Marie, un lieu de détente et de découvertes. Appréciez un cadre des plus enchanteurs pour des moments inoubliables.',2,'/images/saint marie.jpg',7);
insert into voyages values (null,'2024-09-02','2024-09-07','Tuléar (Toliara)','vehicule',600000 ,'Tuléar (Toliara), une destination où le soleil et la mer se rencontrent pour offrir une expérience unique de détente et d aventure.',2,'/images/tulear.jpg',5);


insert into voyages values (null,'2024-09-08','2024-09-15',' Parc National d Andringitra','vehicule',600000 ,'Découvrez le Parc National d Andringitra, un joyau naturel de Madagascar, où vous allez vivre une vrai aventure. .Ce voyage de 9 jours vous emmène à travers des paysages spectaculaires, des sommets majestueux et des vallées unique.',1,'/images/andrigitra1.jpg',9);
insert into voyages values (null,'2024-09-16','2024-09-17',' Parc National d Andasibe','vehicule',80000 ,'Plongez au cœur de la forêt tropicale du Parc National d Andasibe, une destination idéale pour ceux qui aime la nature nature.Venez vivre une expérience inoubliable, enrichie par des activités passionnantes qui vous permettront d apprécier pleinement.',1,'/images/andasibe2.jpg',2);
insert into voyages values (null,'2024-09-18','2024-09-24',' Parc National de Bemaraha','vehicule',500000 ,'Accordez-vous un voyage inoubliable dans le Parc National de Bemaraha. Cette expérience unique vous réserve détente et aventure au cœur de paysages époustouflants et de formations géologiques spectaculaires.',1,'/images/bemaraha1.jpg',6);
insert into voyages values (null,'2024-09-25','2024-10-01',' Parc National de l Isalo','vehicule',500000 ,'Appréciez-vous l aventure? Un voyage au Parc National de l Isalo vous fera le plus grand bien. Plongez dans une aventure unique qui vous transportera dans des lieux à couper le souffle et des formations rocheuses impressionnantes.',1,'/images/isalo1.jpg',6);
insert into voyages values (null,'2024-10-02','2024-10-05',' Mantasoa','vehicule',100000,'Un Havre de Paix.Un lieu calme pour se détendre et apprécier chaque moment, que ce soit en famille ou en amoureux.',1,'/images/Mantasoa.png',3);
insert into voyages values (null,'2024-10-06','2024-10-11','Ampefy','vehicule',100000,'Découvrez un endroit fascinant aux paysages uniques, où chaque vue est une véritable œuvre d art naturelle.',1,'/images/ampefy2.jpg',3);
insert into voyages values (null,'2024-10-12','2024-10-15',' Mandraka','vehicule',100000,'Entrez dans un univers fait uniquement de nature. Explorez chaque recoin de cette réserve naturelle et découvrez des merveilles cachées.',1,'/images/mandraka2.jpg',3);
-----------------------------//-------------------------------------------------------------------

----------------------------- DETAIL -------------------------------------------------------------
CREATE TABLE details (
    details_id INT AUTO_INCREMENT PRIMARY KEY,
    voyages_id int,
    detail text,
     FOREIGN KEY (voyages_id ) REFERENCES voyages(voyages_id )
);


insert into details values(null,1,'Jour 1 : Exploration de l île en quad, découverte des paysages et des villages authentiques. Croisière en bateau pour admirer le coucher du soleil depuis l eau, avec apéritif à bord.');
insert into details values(null,1,'Jour 2 : visite de la réserve de Lokobe, observation des lémuriens et de la faune locale.');
insert into details values(null,1,'Jour 3 : Excursion en bateau à Nosy Komba et plongée sous-marine au parc marin de Nosy Tanikely, exploration des récifs coralliens.');
insert into details values(null,1,'Jour 4 : Observation des tortues marines : Excursion pour observer et nager avec les tortues marines dans leur habitat naturel. Excursion d une demi-journée pour faire du snorkeling et découvrir la vie marine.');
insert into details values(null,1,'Jour 5 : Visite du Mont Passot, pique-nique et observation du coucher de soleil panoramique.');
insert into details values(null,1,'Jour 6 : Départ en bateau pour Nosy Iranja. Snorkeling, baignade et visite de l île, détente sur les plages de sable blanc.');
insert into details values(null,1,'Jour 7 : Journée de détente sur la plage d Andilana et visite des plantations d ylang-ylang avec dégustation de produits locaux et shopping au marché local.');
insert into details values(null,1,'Jour 8 : Participation à un atelier local pour apprendre à fabriquer des objets artisanaux malgaches et initiation à la pêche traditionnelle avec les pêcheurs locaux.');

insert into details values(null,2,'Jour 1 : Visite de la vieille ville, des cathédrales, des marchés et des ateliers d artisanat.');
insert into details values(null,2,'Jour 2 : Excursion au Parc National de Ranomafana, observation des lémuriens et randonnée.');
insert into details values(null,2,'Jour 3 : Visite des vignobles de Fianarantsoa et dégustation de vins.');
insert into details values(null,2,'Jour 4 : Visite de la ville voisine d Ambalavao, célèbre pour son papier Antaimoro et ses fabriques de soie.');
insert into details values(null,2,'Jour 5 : Excursion dans les plantations de thé environnantes, découverte du processus de production et dégustation de thé.');
insert into details values(null,2,'Jour 6 : Randonnée à Anja Community Reserve : Excursion d une journée pour visiter cette réserve communautaire, connue pour ses populations de lémuriens Catta.');


insert into details values(null,3,'Jour 1 : Découverte des bâtiments coloniaux et des sites historiques de Diego Suarez, tels que l hôtel de ville.');
insert into details values(null,3,'Jour 2 : Visite des Trois Baies (Baie des Dunes, Baie des Pigeons, Baie de Sakalava) et baignade');
insert into details values(null,3,'Jour 3 : Découverte de la Mer d Émeraude, plongée et exploration des îles environnantes, et pique-nique sur une plage isolée.');
insert into details values(null,3,'Jour 4 : Excursion à la Montagne d Ambre, randonnée et observation de la faune et de la flore endémiques');
insert into details values(null,3,'Jour 5 : visite des cascades et des lacs volcaniques.');
insert into details values(null,3,'Jour 6 : Détente sur les plages de Ramena, activités nautiques et visite du marché locals');
insert into details values(null,3,'Jour 7 : Exploration des environs de Diego Suarez en quad ou en 4x4, découverte des paysages naturels et des villages traditionnels.');
insert into details values(null,3,'Jour 8 : Visite de la réserve spéciale d Ankarana : Excursion d une journée pour visiter cette réserve célèbre pour ses tsingy (formations rocheuses) et ses grottes.');
insert into details values(null,3,'Jour 9 : Participation à un cours de kitesurf à la Baie de Sakalava, réputée pour ses conditions idéales pour ce sport.');


insert into details values(null,4,'Jour 1 : Visite du cimetière des pirates, du musée de la baleine, et randonnée à travers l île');
insert into details values(null,4,'Jour 2 : Excursion en bateau pour observer les baleines (en saison) et plongée dans les récifs coralliens et admirer la vie marine colorée.');
insert into details values(null,4,'Jour 3 : Journée de détente sur les plages de l île aux Nattes et snorkeling.');
insert into details values(null,4,'Jour 4 : Randonnée guidée à travers la forêt tropicale de l île pour observer les oiseaux endémiques et les plantes exotiques.');
insert into details values(null,4,'Jour 5 : Exploration de l île en vélo, découverte des petits villages et des paysages pittoresques.');
insert into details values(null,4,'Jour 6 : Balade en kayak dans les mangroves pour observer les oiseaux et les crabes.');
insert into details values(null,4,'Jour 7 : Découverte des plantations de vanille, apprentissage du processus de culture et de transformation, et dégustation de produits à base de vanille.');


insert into details values(null,5,'Jour 1 : Visite de l Arboretum d Antsokay et du musée des arts et traditions du sud de Madagascar.');
insert into details values(null,5,'Jour 2 : Excursion à Ifaty pour faire de la plongée et du snorkeling, puis exploration de la forêt de baobabs.');
insert into details values(null,5,'Jour 3 : Visite des salines de Tuléar et détente sur la plage de Mangily.');
insert into details values(null,5,'Jour 4 : Excursion à Anakao, village de pêcheurs, détente sur la plage et exploration des environs.');
insert into details values(null,5,'Jour 5 : Visite du parc national de Tsimanampetsotsa pour découvrir ses lacs salés, ses grottes et sa faune unique.');


insert into details values(null,6,'Jour 1 : Ascension du Pic Boby, avec guides locaux expérimentés. Observation du coucher de soleil et nuitée en bivouac.');
insert into details values(null,6,'Jour 2 : Retour au camp de base et exploration de la Vallée de Tsaranoro, observation de la flore et de la faune locales.');
insert into details values(null,6,'Jour 3 : Profitez d une journée pour vous reposer, vous acclimater à l altitude et apprécier la nature environnante.');
insert into details values(null,6,'Jour 4 : Randonnée à travers le parc, découverte des différents écosystèmes et des points de vue panoramiques.');
insert into details values(null,6,'Jour 5 : Randonnée jusqu à la Cascade Riambavy, détente et pique-nique près des chutes rafraîchissantes.');
insert into details values(null,6,'Jour 6 : Départ tôt le matin pour la randonnée jusqu au sommet d Imarivolanitra, découverte de ce sommet emblématique pour une vue panoramique supplémentaire et nuitée en bivouac.');
insert into details values(null,6,'Jour 7 : Retour, possibilité de faire une halte pour admirer le paysage sur le chemin.');
insert into details values(null,6,'Jour 8 : Participation à des ateliers pour apprendre l artisanat local, comme la fabrication de tapis traditionnels ou la cuisine malgache.');
insert into details values(null,6,'Jour 9 : Exploration des gorges et canyons du parc, observation des formations géologiques uniques et des habitats naturels.');


insert into details values(null,7,'Jour 1 : Visite de la Réserve Spéciale d Analamazaotra, observation des lémuriens Indri, avec Visite nocturne pour voir les animaux nocturnes.');
insert into details values(null,7,'Jour 2 : Randonnée dans le Parc National de Mantadia et visite des chutes de la Namaza.');


insert into details values(null,8,'Jour 1 : Randonnée dans les Petits Tsingy, observation de la faune et de la flore.');
insert into details values(null,8,'Jour 2 : Visite des Grands Tsingy, exploration des grottes et canyon, découverte des écosystèmes souterrains et des espèces rares.');
insert into details values(null,8,'Jour 3 : Visite du village de Bekopaka,  découverte de leur mode de vie et de leurs traditions.');
insert into details values(null,8,'Jour 4 : Balade en pirogue sur la rivière Manambolo et découverte des grottes le long de la rivière.');
insert into details values(null,8,'Jour 5 : Excursion d une journée pour découvrir la forêt de Kirindy, habitat des lémuriens et autres espèces uniques.');
insert into details values(null,8,'Jour 6 : Visite des lacs et des marais du parc, observation de la faune aquatique et des plantes rares.');


insert into details values(null,9,'Jour 1 : Randonnée jusqu à la Fenêtre de l Isalo, exploration des paysages désertiques et des formations rocheuses uniques.');
insert into details values(null,9,'Jour 2 : Randonnée dans le Canyon des Makis et baignade dans la piscine naturelle, pique-nique et détente au bord de l eau.');
insert into details values(null,9,'Jour 3 : Observation des oiseaux et détente dans les oasis du parc.');
insert into details values(null,9,'Jour 4 : Visite de la Grotte des Portugais , découverte de ses formations rocheuses et de ses légendes locales.');
insert into details values(null,9,'Jour 5 : Randonnée plus longue jusqu au plateau pour une vue panoramique sur le parc et ses paysages variés.');
insert into details values(null,9,'Jour 6 : Randonnée vers les cascades du parc, baignade et détente dans un cadre naturel magnifique.');


insert into details values(null,10,'Jour 1 : Excursion Lacustre: Balade en bateau sur le Lac de Mantasoa et détente au bord du lac.');
insert into details values(null,10,'Jour 2 : Activités nautiques (kayak, pêche) et visite des vestiges de Jean Laborde.');
insert into details values(null,10,'Jour 3 : Randonnée autour du lac et pique-nique en pleine nature.');


insert into details values(null,11,'Jour 1 : Visite de la Cascade de la Lily et pique-nique près de la cascade.');
insert into details values(null,11,'Jour 2 : Randonnée autour du Lac Itasy,découverte des villages environnants et des activités locales.');
insert into details values(null,11,'Jour 3 : Exploration des paysages volcaniques et des geysers avec dans les sources d eau chaude.Balade en pirogue pour apprécier le paysage depuis l eau et observer les oiseaux aquatiques.');


insert into details values(null,12,'Jour 1 : Randonnée et exploration dans la Réserve de Mandraka, observation de la faune et de la flore locales.');
insert into details values(null,12,'Jour 2 : Exploration des sentiers de Mandraka en vélo tout-terrain pour une expérience plus aventureuse.');
insert into details values(null,12,'Jour 3 : Visite des plantations de fraises et autres cultures avec dégustation des produits locaux.');

--------------------------------------------------------------------------------------------------
----------------------------  RESERVATION ---------------------------------------------------
CREATE TABLE reservations (
    reservations_id INT AUTO_INCREMENT PRIMARY KEY,
    date_depart varchar(255),
    date_arriver varchar(255),
    lieu varchar(255),
    paf float,
    nbr_personne int,
    voyages_id int,
    photo_url varchar(355),
    numero_tel varchar(255),
    FOREIGN KEY (voyages_id ) REFERENCES voyages(voyages_id )
);
-----------------------------------------------------------------------------------