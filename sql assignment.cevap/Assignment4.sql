with T1 as ( 

select distinct product_id,discount,
	Sum(quantity) over(partition by product_id,discount)cnt_quantity
from sale.order_item 
),

T2 as (

select distinct product_id,discount,cnt_quantity,
			lead(cnt_quantity,1) over( partition by product_id order by discount) high_discount_num,
			lead(cnt_quantity,1) over (partition by product_id order by discount)-cnt_quantity as fark
		 
from T1
	)
			

select distinct product_id,
			case 
			when Sum(fark) over (partition by product_id)>0 then'Positive'
			when Sum(fark) over (partition by product_id)<0 then'Negative'
			else 'Neutral'
			End as Discount_effects
from T2
order by product_id



