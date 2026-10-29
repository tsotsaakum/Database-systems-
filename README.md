# ITDSA order database

Coursework for **Information Technology and Data Systems Architecture (ITDSA)** at Eduvos Midrand.

Sivuziwe Tsotsa · Bachelor of Science in Computer Science · Eduvos · submitted 25 August 2025 · result **100%**.

The written submission is in [`ITDSA_Project.pdf`](ITDSA_Project.pdf). [`schema.sql`](schema.sql) is the same physical design in PostgreSQL. The submission described `AUTO_INCREMENT` keys. This script uses `IDENTITY`, which is the PostgreSQL equivalent. The module work also used MongoDB.

## What the design covers

- Business rules for customers, orders, products, and suppliers.
- An entity-relationship diagram and normalisation through third normal form.
- Tables: `customers`, `suppliers`, `products`, `orders`, `order_items`.
- Primary keys, foreign keys, unique product names and emails, and checks that price and quantity stay positive.
- Relational algebra for orders, warehouse stock, and suppliers.
- Standard and premium customer subtypes.
- A lost-update concurrency example and a conflict-serializable schedule.
- A denormalised `customer_summary` for order count and amount spent.
- A graph model of who bought which product, for recommendations.

## Load the schema

Requires PostgreSQL.

```text
psql -d itdsa -f schema.sql
psql -d itdsa -f customer_summary.sql
```

`customer_summary.sql` expects rows in the order tables. The submission query multiplied quantity by `Price`. The order-item column is `unit_price`, and the script uses that.

The graph example is in [`graph-recommendations.cypher`](graph-recommendations.cypher).
