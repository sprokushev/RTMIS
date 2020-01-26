TRUNCATE TABLE countries;

-- Добавляем новые страны
SELECT public.add_country('Россия','Москва',to_date('12.06.1990','dd.mm.yyyy'),140000000); 
SELECT public.add_country('США','Вашингтон',to_date('04.07.1776','dd.mm.yyyy'),332000000); 
SELECT public.add_country('Франция','Париж',to_date('22.09.1792','dd.mm.yyyy'),67000000); 
SELECT public.add_country('Турция',NULL,NULL,NULL); 
select * from countries;

-- Обновляем данные по Турции
SELECT public.add_country('Турция','Стамбул',to_date('29.10.1923','dd.mm.yyyy'),80000000); 
select * from countries;

-- Удаляем США
SELECT public.del_country('США'); 
select * from countries;