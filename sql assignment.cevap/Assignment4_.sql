with t1 as (
select distinct  product_id,discount,
        SUM(quantity) over (partition by product_id,discount ) net_amount
from sale.order_item
),
t2 as (
select*,
	lead(t1.net_amount) over(partition by t1.product_id order by t1.product_id,t1.discount) onceki_ay_satýs,
	dense_rank() over(partition by t1.product_id order by t1.product_id, t1.discount) row_num
from T1	),
t3 as
		(
		select *,(t2.onceki_ay_satýs - t2.net_amount ) fark
		from t2
		where t2.row_num  < 4
		)
select distinct product_id,
	case
		when Sum(fark) over (partition by product_id)>0 then'Positive'
		when Sum(fark) over (partition by product_id)<0 then'Negative'
		else 'Neutral'
		End as Discount_effects
from t3