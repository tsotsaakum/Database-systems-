-- Fills customer_summary from the normalised tables.
-- The submission wrote SUM(oi.Quantity * oi.Price).
-- The order item column in the physical schema is unit_price, so this script uses that.

INSERT INTO customer_summary (
    customer_id,
    customer_name,
    email,
    total_orders,
    total_amount_spent
)
SELECT
    c.customer_id,
    c.name,
    c.email,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.quantity * oi.unit_price) AS total_amount_spent
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_items AS oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.name, c.email;
