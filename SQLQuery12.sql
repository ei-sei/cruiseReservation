select * from Orders;
select * from Products;
select * from Customer;

select c.SecondName, sum(p.Price)
from Orders o
inner join Products p on o.ProductID=p.id
inner join Customer c on o.CustomerID=c.Id
group by c.SecondName