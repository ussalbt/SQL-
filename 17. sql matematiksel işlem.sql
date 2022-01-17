SELECT TOP (1000) product.brand.brand_name, SUM(product.product.list_price) AS Total, COUNT(product.brand.brand_name) AS adet,(product.product.list_price*1.18) as kdvli,
FROM     product.product INNER JOIN
                  product.category ON product.product.category_id = product.category.category_id INNER JOIN
                  product.brand ON product.product.brand_id = product.brand.brand_id
GROUP BY product.brand.brand_name, product.list_price
ORDER BY product.brand.brand_name
