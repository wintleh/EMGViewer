DROP TABLE IF EXISTS Quiz_Question;
DROP TABLE IF EXISTS Quiz_Answer;
DROP TABLE IF EXISTS Quiz_Category;

CREATE TABLE Quiz_Category (
    categoryID  int             not null,
    category    varchar(128)    not null,
    constraint Quiz_Category_PK primary key (categoryID)
);

CREATE TABLE Quiz_Answer (
    answerID    int             not null,
    category    int             not null,
    answer      varchar(128)    not null,
    constraint Quiz_Answer_PK 
        primary key (answerID),
    constraint Quiz_Answer_FK1 
        foreign key (category)
        references Quiz_Category(categoryID)
);

CREATE TABLE Quiz_Question (
    questionID      int             not null,
    category        int             not null,
    question        varchar(256)    not null,
    correct_answer  int             not null,
    constraint Quiz_Question_PK 
        primary key (questionID),
    constraint Quiz_Question_FK1 
        foreign key (category)
        references Quiz_Category(categoryID),
    constraint Quiz_Question_FK2
        foreign key (correct_answer)
        references Quiz_Answer(answerID)
);

insert into Quiz_Category values (0, "history");
insert into Quiz_Category values (1, "definition");
insert into Quiz_Category values (2, "how-to-place");
insert into Quiz_Category values (3, "how-to-interpret");


insert into Quiz_Answer values (0,  0, "Dr. Wilhelm Einthoven");
insert into Quiz_Answer values (1,  0, "Dr. Luigi Galvan");
insert into Quiz_Answer values (2,  0, "Dr. Carlo Matteucci");
insert into Quiz_Answer values (3,  0, "August Waller");
insert into Quiz_Answer values (4,  0, "Gabriel Lippmann");

insert into Quiz_Answer values (6,  1, "Cardiac Cells");
insert into Quiz_Answer values (7,  1, "Pacemaker Cells");
insert into Quiz_Answer values (8,  1, "Electrical Conduction Cells");
insert into Quiz_Answer values (9,  1, "P Wave");
insert into Quiz_Answer values (10, 1, "T Wave");
insert into Quiz_Answer values (11, 1, "Lead");

insert into Quiz_Answer values (12, 2, "V1");
insert into Quiz_Answer values (13, 2, "V2");
insert into Quiz_Answer values (14, 2, "V4");
insert into Quiz_Answer values (15, 2, "V6");
insert into Quiz_Answer values (16, 2, "RL");
insert into Quiz_Answer values (17, 2, "V5");

insert into Quiz_Answer values (18, 3, "normal-sinus-rhythm");
insert into Quiz_Answer values (19, 3, "sinus-bradycardia");
insert into Quiz_Answer values (20, 3, "premature-atrial-complexes");
insert into Quiz_Answer values (21, 3, "atrial-flutter");
insert into Quiz_Answer values (22, 3, "idioventricular-rhythm");
insert into Quiz_Answer values (23, 3, "asystole");


insert into Quiz_Question values (0,  0, "Who invented the galvanometer?", 0 );
insert into Quiz_Question values (1,  0, "Who developed the string galvanometer?", 0 );
insert into Quiz_Question values (2,  0, "Who discovered that skeletal muscles work by producing electrical currents?", 1 );
insert into Quiz_Question values (3,  0, "Who discovered the electrical current in a frog's heartbeat?", 2 );
insert into Quiz_Question values (4,  0, "Who recorded the first human electrocardiogram", 3 );
insert into Quiz_Question values (5,  0, "Who devised the capillary electrometer?", 4 );

insert into Quiz_Question values (6,  1, "Which type of cell make up the heart muscles?", 6 );
insert into Quiz_Question values (7,  1, "Which type of cell activates and regulates myocardial cells?", 7 );
insert into Quiz_Question values (8,  1, "Which type of cell conduct impulses generated by pacemaker cells?", 8 );
insert into Quiz_Question values (9,  1, "Which type of wave is formed by the cardiac cycle beginning with the SA node sending an impulse to depolarize the left and right atria?", 9 );
insert into Quiz_Question values (10, 1, "Which type of wave follows the ST segment and represents repolarization of the ventricles?", 10);
insert into Quiz_Question values (11, 1, "Which is used to view the heart from a particular angle?", 11);

insert into Quiz_Question values (12, 2, "Which lead is placed to the right of the sternal border?", 12);
insert into Quiz_Question values (13, 2, "Which lead is placed opposite of V1?", 13);
insert into Quiz_Question values (14, 2, "Which lead is placed on the midclavicular line?", 14);
insert into Quiz_Question values (15, 2, "Which lead is placed on the midaxillary line?", 15);
insert into Quiz_Question values (16, 2, "Which lead can be placed anywhere from the ankle to upper thigh on the right leg?", 16);
insert into Quiz_Question values (17, 2, "Which lead is placed directly between V4 and V6?", 17);

insert into Quiz_Question values (18, 3, "Which is an example of Normal Sinus Rhythm?",         18);
insert into Quiz_Question values (19, 3, "Which is an example of Sinus Bradycardia?",           19);
insert into Quiz_Question values (20, 3, "Which is an example of Premature Atrial Complexes?",  20);
insert into Quiz_Question values (21, 3, "Which is an example of Atrial Flutter?",              21);
insert into Quiz_Question values (22, 3, "Which is an example of Idioventricular Rhythm?",      22);
insert into Quiz_Question values (23, 3, "Which is an example of Asystole?",                    23);