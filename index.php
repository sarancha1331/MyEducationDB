<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

 </head>
 <body>

<?php
include 'Query.php';
$Query = new Query();
//$data = $Query->SelectQuery_1();
//$data = $Query->SelectQuery_2();
//$data = $Query->SelectQuery_3();
//$data = $Query->SelectQuery_4();
//$data = $Query->SelectQuery_5();	
//$data = $Query->SelectQuery_6();	
//$data = $Query->SelectQuery_7();	
//$data = $Query->SelectQuery_8();	
//$data = $Query->SelectQuery_9();	
//$data = $Query->SelectQuery_10();	
//$data = $Query->SelectQuery_11();	
//$data = $Query->SelectQuery_12();	
//$data = $Query->SelectQuery_13();	
//$data = $Query->SelectQuery_14();	
//$data = $Query->SelectQuery_15();	
//$data = $Query->SelectQuery_16();	
//$data = $Query->SelectQuery_17();	
//$data = $Query->SelectQuery_18();	
//$data = $Query->SelectQuery_19();	
//$data = $Query->SelectQuery_20();	
?>


<div class="container">

<h2>Таблицы и их связи</h2>
<div class="img_block"><img style="width: 100%;" src="Photo/diag.jpg"></div>

<h2>Простые запросы</h2><br>
<b>1. Список всех сотрудников школы</b>
<div class="txt">SELECT *FROM employee</div>
<div class="img_block"><img src="Photo/1.jpg"></div>
<hr>

<b>2. Список всех преподавателей</b>
<div class="txt">SELECT *FROM teacher</div>
<div class="img_block"><img src="Photo/2.jpg"></div>
<hr>

<b>3. Список остальных работников</b>
<div class="txt">SELECT *FROM otherpersonal</div>
<div class="img_block"><img src="Photo/3.jpg"></div>
<hr>

<h2>Простые запросы с фильтрами</h2><br>
<b>4. Список всех сотрудников школы №1</b>
<div class="txt">SELECT * FROM employee WHERE Schoolid = 1</div>
<div class="img_block"><img src="Photo/4.jpg"></div>
<hr>

<b>5. Список окладов между 30 000 и 60 000 </b>
<div class="txt">SELECT * FROM oklad WHERE Oklad BETWEEN 30000 AND 60000</div>
<div class="img_block"><img style="width: 15%;" src="Photo/5.jpg"></div>
<hr>

<b>6. Список всех работников(ключевое слово) со специализацией старший преподавателей </b>
<div class="txt">SELECT * FROM employee WHERE Specializations = "Старший преподаватель"</div>
<div class="img_block"><img src="Photo/6.jpg"></div>
<hr>

<b>7. Список всех учеников с сортировкой по полю FIO(по убыванию) </b>
<div class="txt">SELECT * FROM `student` ORDER by FIO DESC</div>
<div class="img_block"><img style="width: 60%;" src="Photo/7.jpg"></div>
<hr>

<h2>Простые запросы с групировкой</h2><br>
<b>8. Кол-во сотрудников в каждой школе </b>
<div class="txt">SELECT COUNT(*) as 'Кол-во работников', Schoolid FROM employee GROUP BY Schoolid</div>
<div class="img_block"><img style="width: 30%;" src="Photo/8.jpg"></div>
<hr>

<b>9. Кол-во учащихся в школе №2(HAVING + фильтр)</b>
<div class="txt">SELECT count(Specializations) as 'Кол-во учащихся',Schoolid, Specializations FROM employee WHERE Specializations = 'Учащийся' GROUP BY Schoolid HAVING Schoolid=2 </div>
<div class="img_block"><img style="width: 40%;" src="Photo/9.jpg"></div>
<hr>

<b>10. Уникальные наборы специализаций сотрудников(Distinct)</b>
<div class="txt">SELECT DISTINCT Specializations from employee </div>
<div class="img_block"><img style="width: 20%;" src="Photo/10.jpg"></div>
<hr>

<h2>Сложные запросы</h2><br>
<b>11. Список FIO учеников и учителей </b>
<div class="txt">SELECT teacher.FIO as 'ФИО' from teacher UNION SELECT student.FIO FROM student</div>
<div class="img_block"><img style="width: 20%;" src="Photo/11.jpg"></div>
<hr>

<b>12. Список преподавателей и их окладов</b>
<div class="txt">SELECT teacher.FIO, oklad.Oklad from teacher,oklad, dolj where teacher.DoljId = dolj.id and dolj.OkladId=oklad.id</div>
<div class="img_block"><img style="width: 15%;" src="Photo/12.jpg"></div>
<hr>

<b>13. Список преподавателей, других работников и их окладов(через UNION)</b>
<div class="txt">SELECT teacher.FIO, oklad.Oklad from teacher,oklad, dolj where teacher.DoljId = dolj.id and dolj.OkladId=oklad.id <br>UNION<br> SELECT otherpersonal.FIO, oklad.Oklad from otherpersonal,oklad, dolj where otherpersonal.DoljId = dolj.id and dolj.OkladId=oklad.id</div>
<div class="img_block"><img style="width: 15%;" src="Photo/13.jpg"></div>
<hr>

<b>14. Список преподавателей и их окладов(JOIN 2 таблиц)</b>
<div class="txt">SELECT teacher.FIO, oklad.Oklad FROM teacher <br>JOIN dolj ON teacher.DoljId = dolj.id <br>JOIN oklad ON dolj.OkladId = oklad.id</div>
<div class="img_block"><img style="width: 20%;" src="Photo/14.jpg"></div>
<hr>

<b>15. Список преподавателей их стажа и оклада(JOIN 3 таблиц)</b>
<div class="txt">SELECT teacher.FIO, oklad.Oklad, staj.Staj FROM teacher <br>JOIN staj ON teacher.StajId = staj.id <br>JOIN dolj ON teacher.DoljId = dolj.id <br>JOIN oklad ON dolj.OkladId = oklad.id</div>
<div class="img_block"><img style="width: 25%;" src="Photo/15.jpg"></div>
<hr>

<b>16. Список преподавателей их стажа, оклада +вычитаемая ЗП(+5% за год)(JOIN 3 таблиц)</b>
<div class="txt">SELECT teacher.FIO, oklad.Oklad, staj.Staj, (oklad.Oklad + (oklad.Oklad * (staj.Staj*0.05))) as 'ЗП(+5% за год)' FROM teacher <br>JOIN staj ON teacher.StajId = staj.id<br>JOIN dolj ON teacher.DoljId = dolj.id <br>JOIN oklad ON dolj.OkladId = oklad.id</div>
<div class="img_block"><img style="width: 40%;" src="Photo/16.jpg"></div>
<hr>

<b>17. Список преподавателей и других работников, окладов и их вычитаемоей ЗП</b>
<div class="txt">SELECT teacher.FIO, oklad.Oklad, staj.Staj, (oklad.Oklad + (oklad.Oklad * (staj.Staj*0.05))) as 'ЗП(+5% за год)' FROM teacher <br>JOIN staj ON teacher.StajId = staj.id<br> JOIN dolj ON teacher.DoljId = dolj.id <br>JOIN oklad ON dolj.OkladId = oklad.id <br>UNION<br> SELECT otherpersonal.FIO, oklad.Oklad, staj.Staj, (oklad.Oklad + (oklad.Oklad * (staj.Staj*0.05))) as 'ЗП(+5% за год)' FROM otherpersonal <br>JOIN staj ON otherpersonal.StajId = staj.id <br>JOIN dolj ON otherpersonal.DoljId = dolj.id <br>JOIN oklad ON dolj.OkladId = oklad.id</div>
<div class="img_block"><img style="width: 40%;" src="Photo/17.jpg"></div>
<hr>

<b>18. Список преподавателей их оклада и должности(JOIN + RIGHT JOIN)</b>
<div class="txt">SELECT teacher.FIO, oklad.Oklad, dolj.Nazv FROM teacher <br>RIGHT JOIN dolj ON teacher.DoljId = dolj.id  <br>JOIN oklad ON dolj.OkladId = oklad.id</div>
<div class="img_block"><img style="width: 35%;" src="Photo/18.jpg"></div>
<hr>

<b>19. Список победителей в олимпиадах(JOIN нескольких таблиц)</b>
<div class="txt">SELECT student.FIO as 'ФИО победителя',olimpic.Nazv as 'Название олимпиады', olimpic.Subject FROM student <br>JOIN olimpicandstudent ON olimpicandstudent.StudentId = student.id <br>JOIN olimpic ON olimpic.id = olimpicandstudent.OlimpicId</div>
<div class="img_block"><img style="width: 50%;" src="Photo/19.jpg"></div>
<hr>

<b>20. Список студентов находящихся в федерациях и название спорта(JOIN нескольких таблиц)</b>
<div class="txt">SELECT student.FIO, federation.Nazv,Sport.Nazv FROM student <br>JOIN sportsman ON sportsman.StudentId = student.id <br>JOIN federation ON federation.id = sportsman.FederationId <br>JOIN sport ON sport.id = sportsman.SportId</div>
<div class="img_block"><img style="width: 35%;" src="Photo/20.jpg"></div>
<hr>




</div>

 </body>

<style type="text/css">
	.txt{
		width: 100%;
		padding: 20px;
		background-color:  #e5e5e5;
		color: green;
		font-weight: bold;
		text-align: justify;
	}

	.img_block{
		position: relative;
		text-align: center;
		margin: 20px 0;
	}

	.img_block img{
		width: 50%;
	}
</style>


</html>