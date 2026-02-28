-- Objetivo: Acompanhar a evolução da receita ao longo do tempo

SELECT 
    DATE_TRUNC('month', o.order_purchase_timestamp) AS mes_referencia,
    COUNT(DISTINCT o.order_id) AS total_pedidos,
    SUM(oi.price) AS receita_total,
    ROUND(AVG(oi.price), 2) AS ticket_medio
FROM 
    olist_orders_dataset o
JOIN 
    olist_order_items_dataset oi ON o.order_id = oi.order_id
WHERE 
    o.order_status = 'delivered' -- Filtra apenas pedidos concretizados
GROUP BY 
    1
ORDER BY 
    1 ASC;