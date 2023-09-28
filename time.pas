﻿{
Добавьте новый файл time.pas, в котором реализуйте функционал проверки введённого года на 
високосность (Високосным считается год, делящийся на 4, за исключением тех годов, 
которые делятся на 100 и не делятся на 400)
}
begin
  var year := ReadInteger('Введите год: ');
  Assert(year > 0);
  if (year mod 4 = 0) and ((year mod 100 <> 0) or (year mod 400 = 0)) then
    Println($'В {year} году 366 дней')
  else
    Println($'В {year} году 365 дней');
end.
{
Введите год:  1988
В 1988 году 366 дней 

Введите год:  2003
В 2003 году 365 дней  

Введите год:  1000
В 1000 году 365 дней   

Введите год:  1
В 1 году 365 дней  
}