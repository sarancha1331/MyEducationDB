<?php

include 'db.php';

class Query{

public function SelectQuery_1(){				
	$db=Db::getConnection();
	$str="SELECT *FROM employee";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_2(){				
	$db=Db::getConnection();
	$str="SELECT *FROM teacher";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_3(){				
	$db=Db::getConnection();
	$str="SELECT *FROM otherpersonal";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_4(){				
	$db=Db::getConnection();
	$str="SELECT * FROM employee WHERE Schoolid = 1";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_5(){				
	$db=Db::getConnection();
	$str="SELECT * FROM oklad WHERE Oklad BETWEEN 30000 AND 60000";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_6(){				
	$db=Db::getConnection();
	$str='SELECT * FROM employee WHERE Specializations = "Старший преподаватель"';
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_7(){				
	$db=Db::getConnection();
	$str='SELECT * FROM `student` ORDER by FIO DESC';
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_8(){				
	$db=Db::getConnection();
	$str="SELECT COUNT(*) as 'Кол-во работников', Schoolid FROM employee GROUP BY Schoolid";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_9(){				
	$db=Db::getConnection();
	$str="SELECT count(Specializations) as 'Кол-во учащихся',Schoolid, Specializations FROM employee WHERE Specializations = 'Учащийся' GROUP BY Schoolid HAVING Schoolid=2";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}


public function SelectQuery_10(){				
	$db=Db::getConnection();
	$str="SELECT DISTINCT Specializations from employee";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_11(){				
	$db=Db::getConnection();
	$str="SELECT teacher.FIO as 'ФИО' from teacher UNION SELECT student.FIO FROM student";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_12(){				
	$db=Db::getConnection();
	$str="SELECT teacher.FIO, oklad.Oklad from teacher,oklad, dolj where teacher.DoljId = dolj.id and dolj.OkladId=oklad.id";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_13(){				
	$db=Db::getConnection();
	$str="SELECT teacher.FIO, oklad.Oklad from teacher,oklad, dolj where teacher.DoljId = dolj.id and dolj.OkladId=oklad.id <br>UNION<br> SELECT otherpersonal.FIO, oklad.Oklad from otherpersonal,oklad, dolj where otherpersonal.DoljId = dolj.id and dolj.OkladId=oklad.id";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_14(){				
	$db=Db::getConnection();
	$str="SELECT teacher.FIO, oklad.Oklad FROM teacher  JOIN dolj ON teacher.DoljId = dolj.id JOIN oklad ON dolj.OkladId = oklad.id";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_15(){				
	$db=Db::getConnection();
	$str="SELECT teacher.FIO, oklad.Oklad, staj.Staj FROM teacher JOIN staj ON teacher.StajId = staj.id JOIN dolj ON teacher.DoljId = dolj.id JOIN oklad ON dolj.OkladId = oklad.id";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_16(){				
	$db=Db::getConnection();
	$str="SELECT teacher.FIO, oklad.Oklad, staj.Staj, (oklad.Oklad + (oklad.Oklad * (staj.Staj*0.05))) as 'ЗП(+5% за год)' FROM teacher JOIN staj ON teacher.StajId = staj.id JOIN dolj ON teacher.DoljId = dolj.id JOIN oklad ON DoljId = oklad.id";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_17(){				
	$db=Db::getConnection();
	$str="SELECT teacher.FIO, oklad.Oklad, staj.Staj, (oklad.Oklad + (oklad.Oklad * (staj.Staj*0.05))) as 'ЗП(+5% за год)' FROM teacher JOIN staj ON teacher.StajId = staj.id JOIN dolj ON teacher.DoljId = dolj.id JOIN oklad ON dolj.OkladId = oklad.id UNION SELECT otherpersonal.FIO, oklad.Oklad, staj.Staj, (oklad.Oklad + (oklad.Oklad * (staj.Staj*0.05))) as 'ЗП(+5% за год)' FROM otherpersonal JOIN staj ON otherpersonal.StajId = staj.id JOIN dolj ON otherpersonal.DoljId = dolj.id JOIN oklad ON dolj.OkladId = oklad.id";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_18(){				
	$db=Db::getConnection();
	$str="SELECT teacher.FIO, oklad.Oklad, dolj.Nazv FROM teacher RIGHT JOIN dolj ON teacher.DoljId = dolj.id  JOIN oklad ON dolj.OkladId = oklad.id";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_19(){				
	$db=Db::getConnection();
	$str="SELECT student.FIO as 'ФИО победителя',olimpic.Nazv as 'Название олимпиады', olimpic.Subject FROM student JOIN olimpicandstudent ON olimpicandstudent.StudentId = student.id JOIN olimpic ON olimpic.id = olimpicandstudent.OlimpicId";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

public function SelectQuery_20(){				
	$db=Db::getConnection();
	$str="SELECT student.FIO, federation.Nazv,Sport.Nazv FROM student JOIN sportsman ON sportsman.StudentId = student.id JOIN federation ON federation.id = sportsman.FederationId JOIN sport ON sport.id = sportsman.SportId";
	$result=$db->prepare($str);
	$result->execute();
	return $result;
}

};