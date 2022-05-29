DROP DATABASE IF EXISTS incluarte;
CREATE DATABASE incluarte;

USE incluarte;

DROP TABLE IF EXISTS Users;
CREATE TABLE Users(id_user INT NOT NULL AUTO_INCREMENT,
				   full_name VARCHAR(254) NOT NULL,
				   mail VARCHAR(254) NOT NULL UNIQUE,
				   pwd VARCHAR(80) NOT NULL,
				   media_options JSON,
				   roles VARCHAR(10) NOT NULL,
				   PRIMARY KEY (id_user));

				  
DROP TABLE IF EXISTS Medals;
CREATE TABLE Medals(id_medal INT NOT NULL AUTO_INCREMENT,
					name VARCHAR(120) NOT NULL,
					visit_to_get INT NOT NULL,
				    PRIMARY KEY (id_medal));


DROP TABLE IF EXISTS Users_has_Medals;
CREATE TABLE Users_has_Medals(id_user INT NOT NULL,
							  id_medal INT NOT NULL,
							  PRIMARY KEY (id_user, id_medal),
							  CONSTRAINT fk_usr_medals FOREIGN KEY(id_user) REFERENCES Users(id_user),
							  CONSTRAINT fk_medals_usr FOREIGN KEY(id_medal) REFERENCES Medals(id_medal));
							 
				  
DROP TABLE IF EXISTS Cards;
CREATE TABLE Cards(id_card INT NOT NULL AUTO_INCREMENT,
				   number_card VARCHAR(16) NOT NULL,
				   due_month INT(2) NOT NULL,
				   due_year INT(4) NOT NULL,
				   CCV INT(3) NOT NULL,
				   id_user INT NOT NULL,
				   PRIMARY KEY (id_card),
				   CONSTRAINT fk_usr_card FOREIGN KEY(id_user) REFERENCES Users(id_user));


DROP TABLE IF EXISTS Rewards;
CREATE TABLE Rewards(id_reward INT NOT NULL AUTO_INCREMENT,
				   	 title VARCHAR(64) NOT NULL,
				   	 description VARCHAR(254) NOT NULL,
				   	 discount INT(3) NOT NULL,
				   	 status BOOLEAN NOT NULL,
				   	 id_user INT NOT NULL,
				   	 PRIMARY KEY (id_reward),
				     CONSTRAINT fk_usr_rwd FOREIGN KEY(id_user) REFERENCES Users(id_user));


DROP TABLE IF EXISTS Museums;
CREATE TABLE Museums(id_museum INT NOT NULL AUTO_INCREMENT,
					 name VARCHAR(254) NOT NULL,
					 mail VARCHAR(254) NOT NULL UNIQUE,
					 pwd VARCHAR(80) NOT NULL,
					 location VARCHAR(254) NOT NULL,
					 phone VARCHAR(10) NOT NULL,
					 ticket_cost DOUBLE,
					 days VARCHAR(254) NOT NULL,
					 open_hr TIME NOT NULL,
					 close_hr TIME NOT NULL,
					 description VARCHAR(254) NOT NULL,
					 func_licence VARCHAR(254) NOT NULL,
  					 PRIMARY KEY (id_museum));


DROP TABLE IF EXISTS Tickets;
CREATE TABLE Tickets(id_ticket INT NOT NULL AUTO_INCREMENT,
					 visit_day DATETIME NOT NULL,
					 price JSON NOT NULL,
					 status BOOLEAN NOT NULL,
					 id_user INT NOT NULL,
					 id_museum INT NOT NULL,
					 PRIMARY KEY (id_ticket),
					 CONSTRAINT fk_usr_museum FOREIGN KEY(id_user) REFERENCES Users(id_user),
					 CONSTRAINT fk_museum_usr FOREIGN KEY(id_museum) REFERENCES Museums(id_museum));
							 
				
				  
DROP TABLE IF EXISTS Artworks;
CREATE TABLE Artworks(id_artwork INT NOT NULL AUTO_INCREMENT,
					  thumbnail JSON,
					  name VARCHAR(254) NOT NULL,
					  description VARCHAR(254) NOT NULL,
					  media JSON,
					  id_museum INT NOT NULL,
					  PRIMARY KEY (id_artwork),
					  CONSTRAINT fk_museum_art FOREIGN KEY(id_museum) REFERENCES Museums(id_museum));


DROP TABLE IF EXISTS Events;
CREATE TABLE Events(id_event INT NOT NULL AUTO_INCREMENT,
					name VARCHAR(254) NOT NULL,
					description VARCHAR(254) NOT NULL,
					event_day DATETIME NOT NULL,
					price DOUBLE NOT NULL,
					id_museum INT NOT NULL,
					PRIMARY KEY (id_event),
					CONSTRAINT fk_museum_evt FOREIGN KEY(id_museum) REFERENCES Museums(id_museum));
		
						
DROP TABLE IF EXISTS Collections;
CREATE TABLE Collections(id_collection INT NOT NULL AUTO_INCREMENT,
						 name VARCHAR(254) NOT NULL,
						 description VARCHAR(254) NOT NULL,
   						 id_museum INT NOT NULL,
   						 PRIMARY KEY (id_collection),
	  					 CONSTRAINT fk_museum_col FOREIGN KEY(id_museum) REFERENCES Museums(id_museum));
   						 