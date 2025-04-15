-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 15 avr. 2025 à 15:03
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `job_portal`
--

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

DROP TABLE IF EXISTS `entreprises`;
CREATE TABLE IF NOT EXISTS `entreprises` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_company` varchar(255) NOT NULL,
  `logo` varchar(512) NOT NULL,
  `nb_salarie` int NOT NULL,
  `domainActivity` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `positionLongLat` varchar(512) NOT NULL,
  `presentation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `name_company`, `logo`, `nb_salarie`, `domainActivity`, `address`, `positionLongLat`, `presentation`) VALUES
(1, 'Acadomia Recrutement\r\n', 'https://www.cdn.acadomia.fr/medias/2021/12/logo_acadomia_bleu.png', 1000, 'Soutien scolaire', '128 Av. de la République, 75011 Paris', '48.86293177900848, 2.3861681486061608', ' Avec plus de 120 000 élèves accompagnés chaque année, Acadomia est le leader du soutien scolaire en France. Animée par une mission forte, Acadomia s\'engage à offrir à chacun les outils et l’accompagnement nécessaires pour révéler son potentiel et atteindre ses objectifs.\r\n“ Leader de l’accompagnement éducatif en France, groupe éducatif expérimenté et innovant, Acadomia est avant tout une entreprise à taille humaine, capable de répondre aux besoins de chacun. ” '),
(2, 'Groupe LDLC', 'https://upload.wikimedia.org/wikipedia/fr/thumb/c/c7/LDLC_logo.jpg/1200px-LDLC_logo.jpg', 1000, 'informatique, du high-tech, de la puériculture', '4 Rue de la Longeraie,\r\n35760 SAINT-GRÉGOIRE\r\n', '48.136544014719895, -1.6898355817960278', 'Le Groupe LDLC est un groupe français de commerce en ligne, créé en 1996 par Laurent de La Clergerie. La société est cotée en bourse sur Euronext Growth.');

-- --------------------------------------------------------

--
-- Structure de la table `job_offers`
--

DROP TABLE IF EXISTS `job_offers`;
CREATE TABLE IF NOT EXISTS `job_offers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `mission` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `employment_type` enum('CDI','CDD','Freelance','Internship') NOT NULL,
  `technologies_used` text NOT NULL,
  `benefits` text NOT NULL,
  `participants_count` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image_url` varchar(255) NOT NULL,
  `id_company` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_company` (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `job_offers`
--

INSERT INTO `job_offers` (`id`, `title`, `description`, `mission`, `location`, `category`, `employment_type`, `technologies_used`, `benefits`, `participants_count`, `created_at`, `image_url`, `id_company`) VALUES
(3, 'Développeur Full Stack', 'Nous recherchons un Développeur Full Stack talentueux pour rejoindre notre équipe dynamique.', 'Développer et maintenir des applications web modernes en utilisant des technologies front-end et back-end.', 'Paris, France', 'Développement Web', 'CDI', 'JavaScript, React, Node.js, MySQL', 'Télétravail possible, Assurance santé, Horaires flexibles', 0, '2025-03-14 08:55:44', 'https://www.educatel.fr/wp-content/uploads/2021/04/metier-developpeur-web-1.jpg', 2),
(4, 'Ingénieur Backend', 'Rejoignez notre équipe backend pour concevoir des API performantes et sécurisées.', 'Concevoir et implémenter des API REST avec les meilleures pratiques de sécurité.', 'Lyon, France', 'Ingénierie Logicielle', 'CDI', 'Python, Django, PostgreSQL, Docker', 'Stock-options, Abonnement salle de sport, Congés payés', 0, '2025-03-14 08:55:44', 'https://www.supplychaininfo.eu/wp-content/uploads/2019/07/shutterstock_611605280-compressor-1.jpg', 2),
(5, 'Développeur Frontend', 'Nous avons besoin d\'un Développeur Frontend créatif pour améliorer nos interfaces utilisateur.', 'Implémenter des designs responsifs et optimiser les performances front-end.', 'Marseille, France', 'Développement Web', 'Freelance', 'HTML, CSS, JavaScript, Vue.js', 'Horaires flexibles, Travail à distance, Formations internes', 0, '2025-03-14 08:55:44', 'https://be-freelancer.cherry-pick.io/wp-content/uploads/2019/09/developpeur-front-end-cherry-pick.jpeg', 1),
(6, 'Ingénieur DevOps', 'Nous recherchons un Ingénieur DevOps expérimenté pour automatiser et optimiser notre infrastructure cloud.', 'Mettre en place des pipelines CI/CD et gérer les déploiements cloud.', 'Toulouse, France', 'Infrastructure & Cloud', 'CDI', 'AWS, Kubernetes, Terraform, Jenkins', 'Ordinateur de fonction, Télétravail, Prime annuelle', 0, '2025-03-14 08:55:44', 'https://expleo.com/global/fr/wp-content/uploads/2021/10/devops-1.jpeg', 1),
(7, 'Data Scientist', 'Nous recrutons un Data Scientist pour analyser de grands ensembles de données et créer des modèles prédictifs.', 'Développer des algorithmes de machine learning et des outils de visualisation des données.', 'Bordeaux, France', 'Data Science & IA', 'CDD', 'Python, Pandas, TensorFlow, SQL', 'Salaire compétitif, Horaires flexibles, Snacks gratuits', 0, '2025-03-14 08:55:44', 'https://www.consultor.fr/images/articles/3418/_thumb2/Data-scientists.webp', 2),
(16, 'Technicien-Vendeur en informatique H/F', 'Notre franchise de Rennes recherche un Technicien-vendeur en informatique H/F.\r\n\r\nSous la responsabilité du responsable du magasin, vous intégrerez une équipe passionnée au service d’une clientèle très diverse (particuliers et professionnels, experts et néophytes). Le bon fonctionnement de l’équipe demande une grande polyvalence de la part de chacun de ses membres.', '    Accueil et conseil client (comptoir et téléphone),\r\n    Mise en rayon de matériel,\r\n    Traitement et suivi des commandes clients,\r\n    Gestion du référencement et de l’approvisionnement,\r\n    Tester le fonctionnement du matériel pour diagnostiquer l’état des produits, \r\n    Réaliser des réparations et montages des matériaux informatiques, et le cas échéant, contrôler les réparations des fournisseurs\r\n    Rangement et propreté des locaux,\r\n    Tenue de caisse,', 'Saint-Grégoire, France ', 'Technicien Informatique', 'CDI', 'Infrastructure informatique, \r\nConnaissances informatique (composants)\r\n', 'Rémunération : Fixe motivant + primes collectives + mutuelle premium + tickets restaurant + avantages (CE)', 0, '2025-04-15 07:59:01', 'https://carrieres.groupe-ldlc.com/generated_contents/images/career_wide_picture/6RGDBaEZ-paris-1jpg1627092cropped.jpg', 2),
(17, 'Développeur Informatique H/F', 'On vous attend chez Audensiel ! Société de conseil et d\'ingénierie avec le statut de Jeune Entreprise Innovante, Audensiel est une structure à taille humaine en forte croissance. Audensiel c\'est avant tout une aventure humaine qui se différencie par le recrutement de collaborateurs performants et passionnés : plus de 1500 collaborateurs en France et à l\'étranger. Nous sommes très fiers d\'avoir d\'avoir obtenu les 2 labelsHappy AtWork et Tech AtWork certifiés par Choosemycompagny pour 2024, basés sur l\'avis de nos collaborateurs ! ', 'Vos principales responsabilités :\r\n- Développer et maintenir des applications web en utilisant PHP et des frameworks associés (Symfony, Laravel, etc.)\r\n- Participer à la conception et à l\'architecture des solutions\r\n- Assurer l\'intégration des systèmes et la gestion des bases de données\r\n- Rédiger un code propre, performant et évolutif\r\n- Participer aux tests et à la validation des fonctionnalités\r\n- Collaborer avec les autres développeurs, les chefs de projet et les équipes UX/UI pour garantir la qualité des livrables ', 'Strasbourg, France', 'Développeur PHP', '', 'Framework PHP,\r\nOutil Front-end(html/css/js)', '', 0, '2025-04-15 08:19:50', 'https://f.hellowork.com/media/76493/1440_960/76493_63838054497666238625562003.jpeg', 1),
(18, 'Développeur Informatique C# H/F', 'Chez Abylsen, nous valorisons les talents qui osent sortir des sentiers battus pour concevoir des solutions ingénieuses et innovantes. Pour ce poste de Développeur C# (F/H/X), nous recherchons un professionnel ayant une expérience de 5 à 10 ans dans le domaine. Vous êtes passionné par l\'exploration de nouvelles méthodes et technologies ? Venez contribuer à notre mission d\'accompagnement de nos clients dans leurs projets d\'innovation et de R&D.', '- Développer et maintenir des applications C# pour répondre aux besoins spécifiques des projets client. - Participer à la conception, au codage, aux tests et à la documentation des solutions logicielles. - Collaborer avec les équipes de projet pour assurer la qualité et la cohérence des livrables. - Contribuer aux améliorations continues des processus de développement et des meilleures pratiques. - Analyser et résoudre les problèmes techniques rencontrés pendant les phases de développement et de production ', 'Clermont-Ferrand, France', 'Programmation', 'CDI', 'C#.NET.', 'ticket resto, parking', 0, '2025-04-15 06:43:24', 'https://f.hellowork.com/media/7135/1440_960/7135_6386331425754730157796383.jpg', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `avatar` varchar(500) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstName`, `lastName`, `avatar`, `specialite`, `admin`) VALUES
(1, 'admin@job-portal.fr', 'root', 'admin', 'root', 'https://www.khdestiny.fr/images/avatars/1.jpg', 'administrateur', 1),
(2, 'toto@toto.fr', 'toto', 'toto', 'otot', '', '', 0),
(3, 'obed@test.fr', 'azerty', 'Obed', 'Obed', '', '', 0),
(4, 'aaa@aaa.fr', 'aaaa', 'bbbb', 'aaaa', '', '', 0),
(7, '', '', '', '', '', '', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `job_offers`
--
ALTER TABLE `job_offers`
  ADD CONSTRAINT `job_offers_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `entreprises` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
