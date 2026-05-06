
INSERT INTO FactTable VALUES
('2010-01-01',1,120,500,150,350,45,20,100,130,340,160,520,719),

('2010-01-02',2,200,700,250,450,70,30,120,210,430,260,730,303),

('2010-01-03',3,180,650,220,430,55,25,140,190,420,240,680,719),

('2010-01-04',4,250,900,300,600,80,40,150,260,590,320,950,970),

('2010-01-05',5,300,1000,350,650,90,50,180,320,640,360,1050,303),

('2010-01-06',1,110,480,140,340,42,18,110,120,330,150,500,719),

('2010-01-07',2,210,720,260,460,75,35,125,220,450,270,750,970),

('2010-01-08',3,170,620,210,410,50,22,135,180,400,230,650,303),

('2010-01-09',4,260,950,320,630,95,45,155,270,620,340,980,719),

('2010-01-10',5,310,1100,370,700,100,55,190,330,690,380,1150,970);

INSERT INTO ProductTable VALUES
('Coffee','Colombian',1,'Regular'),

('Tea','Green Tea',2,'Regular'),

('Coffee','Espresso',3,'Regular'),

('Tea','Black Tea',4,'Decaf'),

('Coffee','Cappuccino',5,'Regular');


INSERT INTO LocationTable VALUES
(719,'Colorado','West','Small Market'),

(303,'Colorado','West','Major Market'),

(970,'Colorado','West','Major Market'),

(212,'New York','East','Major Market'),

(305,'Florida','South','Small Market');

SELECT * FROM FactTable;

SELECT * FROM ProductTable;

SELECT * FROM LocationTable;
