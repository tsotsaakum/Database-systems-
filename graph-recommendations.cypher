// Graph design from the ITDSA submission, section 3.2.
// Nodes: Customer (CustomerID, Name, Email), Product (ProductID, Name, Category, Price).
// This is the design from the written project, not a deployed Neo4j database.

CREATE (alice:Customer {name: 'Alice'})
CREATE (bob:Customer {name: 'Bob'})
CREATE (phone:Product {name: 'Phone'})
CREATE (charger:Product {name: 'Charger'})
CREATE (earphones:Product {name: 'Earphones'})
CREATE (alice)-[:BOUGHT {quantity: 2}]->(phone)
CREATE (alice)-[:BOUGHT {quantity: 1}]->(charger)
CREATE (phone)-[:ALSO_BOUGHT {frequency: 25}]->(charger)
CREATE (bob)-[:BOUGHT]->(phone)
CREATE (bob)-[:BOUGHT]->(earphones)
CREATE (phone)-[:ALSO_BOUGHT]->(earphones);
