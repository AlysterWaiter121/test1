select m.* from ALBUM a, MUSICIAN m where a.SSN = m.SSN group by a.SSN having count(a.SSN)>=ALL(select count(SSN) from ALBUM group by SSN);

select m.* from MUSICIAN m, PLAY p where m.SSN = p.SSN group by p.SSN having count (p.SSN) >= 1;

select PA. Pname, count (PR.Dssn) as No_Of_Doc from PRESCRIBE PR, PATIENT PA where PA. Pssn = PR.Pssn and PR.Pdate like "2013-07%" group by PR. Pssn; 

select PC.* from PHARMA COMP PC, CONTRACT C where PC. PC Name = C.PC Name group by C.PC Namehaving count (C. PC_Name) >= ALL (select count (PC. PC_Name) from CONTRACT C, PHARMA_COMP PC where C.PC_Name = PC. PC Name group by C.PC_Name);

select V.*, sum (I.ICharge) as Total from VENDOR V, INSTALLED BY I where V.TIN = I.TIN group by I.TIN having sum(I.ICharge)>= ALL (select avg(I.ICharge) from INSTALLED BY I);

select V.* from VENDOR V, INSTALLED BY I where I.TIN = V.TIN and exists (select * from INSTALLED_BY);