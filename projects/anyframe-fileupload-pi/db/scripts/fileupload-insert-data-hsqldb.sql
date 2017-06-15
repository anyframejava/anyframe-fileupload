CREATE MEMORY TABLE FILEUPLOAD_GENRE(GENRE_ID VARCHAR(16) NOT NULL,NAME VARCHAR(50) NOT NULL,CONSTRAINT PK_FILEUPLOAD_GENRE PRIMARY KEY(GENRE_ID));
CREATE MEMORY TABLE FILEUPLOAD_MOVIE(MOVIE_ID VARCHAR(16) NOT NULL,GENRE_ID VARCHAR(16) NOT NULL,TITLE VARCHAR(50) NOT NULL,DIRECTOR VARCHAR(50) NOT NULL,ACTORS VARCHAR(100) NOT NULL,RUNTIME NUMERIC(3),RELEASE_DATE DATE,TICKET_PRICE NUMERIC(6,2),POSTER_FILE VARCHAR(1000),NOW_PLAYING CHAR(1), FILE_REF_ID VARCHAR(50), CONSTRAINT PK_FILEUPLOAD_MOVIE PRIMARY KEY(MOVIE_ID),CONSTRAINT FK_FILEUPLOAD_MOVIE FOREIGN KEY(GENRE_ID) REFERENCES FILEUPLOAD_GENRE(GENRE_ID));
CREATE MEMORY TABLE FILEUPLOAD_ATTACHED(REF_ID VARCHAR(50) NOT NULL,ID VARCHAR(50) NOT NULL,NAME VARCHAR(255),FILE_SIZE NUMERIC(100),CONSTRAINT PK_FILEUPLOAD_ATTACHED PRIMARY KEY(REF_ID,ID))

INSERT INTO FILEUPLOAD_GENRE VALUES('GR-01','Action');
INSERT INTO FILEUPLOAD_GENRE VALUES('GR-02','Adventure');
INSERT INTO FILEUPLOAD_GENRE VALUES('GR-03','Animation');
INSERT INTO FILEUPLOAD_GENRE VALUES('GR-04','Comedy');
INSERT INTO FILEUPLOAD_GENRE VALUES('GR-05','Crime');
INSERT INTO FILEUPLOAD_GENRE VALUES('GR-06','Drama');
INSERT INTO FILEUPLOAD_GENRE VALUES('GR-07','Fantasy');
INSERT INTO FILEUPLOAD_GENRE VALUES('GR-08','Romance');
INSERT INTO FILEUPLOAD_GENRE VALUES('GR-09','Sci-Fi');
INSERT INTO FILEUPLOAD_GENRE VALUES('GR-10','Thriller');

INSERT INTO FILEUPLOAD_MOVIE VALUES('MV-00001','GR-02','Alice in Wonderland','Tim Burton','Johnny Depp',110,'2011-03-04',8000,'sample/images/posters/aliceinwonderland.jpg','Y', NULL);
INSERT INTO FILEUPLOAD_MOVIE VALUES('MV-00002','GR-09','Avatar','James Cameron','Sigourney Weaver',100,'2011-02-16',7000,'sample/images/posters/avatar.jpg','Y', NULL);
INSERT INTO FILEUPLOAD_MOVIE VALUES('MV-00003','GR-01','Green Zone','Paul Greengrass','Yigal Naor',90,'2011-03-25',7000,'sample/images/posters/greenzone.jpg','Y', NULL);
INSERT INTO FILEUPLOAD_MOVIE VALUES('MV-00004','GR-06','Remember Me','Allen Coulter','Caitlyn Rund',115,'2011-03-12',8000,'sample/images/posters/rememberme.jpg','Y', NULL);
INSERT INTO FILEUPLOAD_MOVIE VALUES('MV-00005','GR-04','She is Out of My League','Jim Field Smith','Jay Baruchel',118,'2011-03-12',7500,'sample/images/posters/shesoutof.jpg','Y', NULL);
INSERT INTO FILEUPLOAD_MOVIE VALUES('MV-00006','GR-05','Shutter Island','Martin Scorsese','Leonardo DiCaprio',95,'2011-03-18',8000,'sample/images/posters/shutterisland.jpg','Y', NULL);

commit;