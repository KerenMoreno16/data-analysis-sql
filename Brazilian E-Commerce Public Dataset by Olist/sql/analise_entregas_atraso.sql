-- Objetivo: Identificar estados com maior taxa de atraso

SELECT 
    c.customer_state AS estado,
    COUNT(o.order_id) AS total_pedidos,
    SUM(CASE 
            WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN 1 
            ELSE 0 
        END) AS pedidos_atrasados,
    ROUND(
        100.0 * SUM(CASE 
                        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN 1 
                        ELSE 0 
                    END) / COUNT(o.order_id), 
    2) AS pct_atraso
FROM 
    olist_orders_dataset o
JOIN 
    olist_customers_dataset c ON o.customer_id = c.customer_id
WHERE 
    o.order_status = 'delivered'
    AND o.order_delivered_customer_date IS NOT NULL
GROUP BY 
    1
HAVING 
    COUNT(o.order_id) > 100 -- Filtra estados com pouco volume para não distorcer
ORDER BY 
    pct_atraso DESC;