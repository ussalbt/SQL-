-- faktoriyel �devi 

Create function factorial(@sayi int)
returns int
as begin
Declare @i int = 1,@sonuc int=1
while (@i<=@sayi)
Begin
	Set @sonuc = @sonuc * @i
	Set @i += 1
End
return @sonuc
End

select dbo.factorial(4)--�stenilen say� parantez i�ine yaz�l�r.

-----
