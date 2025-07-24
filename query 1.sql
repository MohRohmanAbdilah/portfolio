select 
	dayname(SaleDate) hari, Amount, Customers, Boxes, GeoId
from sales
where dayname(SaleDate)='Friday'
order by GeoID;
select*
from people
where Team='Yummies' or Team='Delish';
select* from people where Team in('Yummies','Delish') and Location='Hyderabad';
select * 
from people
where Salesperson like '%b%'; -- jika tanda % di belakang encari huruf akhir b jika ada depan belakang mencari yang ada huruf b
select* from sales;
select SaleDate, Amount, -- ini untuk mengkategorikan data 
	case
		when Amount<1000 then 'dibawah 1k'
        when Amount<5000 then 'dibawah 5k'
        when Amount<10000 then 'dibawan 10k'
		else '10k ke atas'
	end as 'kategori jumlah'
from sales;
