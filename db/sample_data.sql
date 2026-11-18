-- Example Data

INSERT INTO customer (customer_id, customer_name, email, password_hash, street_address, city, state_name, zip_code, customer_type)
VALUES (1, 'Alice Johnson', 'alice.johnson@example.com', 'hash_alice', '12 Hillside Rd', 'Storrs', 'CT', '06268', 'REGULAR');
INSERT INTO customer (customer_id, customer_name, email, password_hash, street_address, city, state_name, zip_code, customer_type)
VALUES (2, 'Bob Martinez', 'bob.martinez@example.com', 'hash_bob', '88 Main St', 'Hartford', 'CT', '06103', 'INFREQUENT');
INSERT INTO customer (customer_id, customer_name, email, password_hash, street_address, city, state_name, zip_code, customer_type)
VALUES (3, 'Acme Supplies', 'orders@acmesupplies.example.com', 'hash_acme', '500 Commerce Way', 'Boston', 'MA', '02110', 'REGULAR');
INSERT INTO customer (customer_id, customer_name, email, password_hash, street_address, city, state_name, zip_code, customer_type)
VALUES (4, 'Dana Lee', 'dana.lee@example.com', 'hash_dana', '77 Elm St', 'Providence', 'RI', '02903', 'INFREQUENT');
INSERT INTO customer (customer_id, customer_name, email, password_hash, street_address, city, state_name, zip_code, customer_type)
VALUES (5, 'Evergreen Labs', 'shipping@evergreenlabs.example.com', 'hash_evergreen', '9 Research Pkwy', 'Cambridge', 'MA', '02139', 'REGULAR');
INSERT INTO customer (customer_id, customer_name, email, password_hash, street_address, city, state_name, zip_code, customer_type)
VALUES (6, 'Frank Osei', 'frank.osei@example.com', 'hash_frank', '301 Ocean Ave', 'Miami', 'FL', '33139', 'INFREQUENT');

INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (1, 'SMALL', 2.50);
INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (2, 'MEDIUM', 6.00);
INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (3, 'SMALL', 1.20);
INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (4, 'LARGE', 24.00);
INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (5, 'MEDIUM', 8.75);
INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (6, 'OVERSIZE', 55.00);
INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (7, 'SMALL', 0.80);
INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (8, 'MEDIUM', 12.00);
INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (9, 'LARGE', 30.50);
INSERT INTO package_specs (package_id, package_size, weight_lbs) VALUES (10, 'SMALL', 3.10);

INSERT INTO transportation (transport_id, shipment_type, carrier_name, vehicle_number) VALUES (1, 'TRUCK', 'Ground Freight Co', 'TRK-4410');
INSERT INTO transportation (transport_id, shipment_type, carrier_name, vehicle_number) VALUES (2, 'TRAIN', 'Northeast Rail', 'RL-210');
INSERT INTO transportation (transport_id, shipment_type, carrier_name, vehicle_number) VALUES (3, 'PLANE', 'AirCargo Express', 'AC-778');
INSERT INTO transportation (transport_id, shipment_type, carrier_name, vehicle_number) VALUES (4, 'BOAT', 'Atlantic Shipping', 'VS-Meridian');
INSERT INTO transportation (transport_id, shipment_type, carrier_name, vehicle_number) VALUES (5, 'TRUCK', 'Ground Freight Co', 'TRK-5521');

INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (1, 1, 1, DATE '2026-10-20', DATE '2026-10-24');
INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (2, 2, 2, DATE '2026-10-25', DATE '2026-10-29');
INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (3, 3, 3, DATE '2026-11-01', DATE '2026-11-04');
INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (4, 3, 4, DATE '2026-10-28', DATE '2026-11-03');
INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (5, 4, 5, DATE '2026-11-03', NULL);
INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (6, 5, 6, DATE '2026-10-30', DATE '2026-11-08');
INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (7, 5, 7, DATE '2026-11-05', NULL);
INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (8, 6, 8, DATE '2026-10-15', DATE '2026-11-02');
INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (9, 1, 9, DATE '2026-11-06', NULL);
INSERT INTO customer_order (order_id, customer_id, package_id, order_date, delivery_date) VALUES (10, 2, 10, DATE '2026-11-08', NULL);

INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (1, 1, 1, 'Storrs, CT', 'Hartford, CT', 'Storrs Store, 1 Dog Ln, Storrs, CT', 'PICKED_UP', TIMESTAMP '2026-10-20 14:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (2, 1, 1, 'Hartford, CT', 'New York, NY', 'Hartford Hub, 1 Sorting Center Dr, Hartford, CT', 'ARRIVED', TIMESTAMP '2026-10-21 08:30:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (3, 1, 1, 'Hartford, CT', 'New York, NY', 'Hartford Hub, 1 Sorting Center Dr, Hartford, CT', 'DEPARTED', TIMESTAMP '2026-10-22 06:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (4, 1, 1, 'New York, NY', NULL, 'NYC Hub, 45 Gateway Dr, New York, NY', 'ARRIVED', TIMESTAMP '2026-10-23 10:15:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (5, 1, 1, 'New York, NY', NULL, 'NYC Hub, 45 Gateway Dr, New York, NY', 'DELIVERED', TIMESTAMP '2026-10-24 13:45:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (6, 2, 2, 'Hartford, CT', 'Boston, MA', 'Hartford Hub, 1 Sorting Center Dr, Hartford, CT', 'PICKED_UP', TIMESTAMP '2026-10-25 16:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (7, 2, 2, 'Hartford, CT', 'Boston, MA', 'Hartford Hub, 1 Sorting Center Dr, Hartford, CT', 'DEPARTED', TIMESTAMP '2026-10-26 07:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (8, 2, 2, 'Boston, MA', NULL, 'Boston Warehouse, 900 Harbor Blvd, Boston, MA', 'ARRIVED', TIMESTAMP '2026-10-27 12:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (9, 2, 2, 'Boston, MA', NULL, 'Boston Warehouse, 900 Harbor Blvd, Boston, MA', 'DELIVERED', TIMESTAMP '2026-10-29 11:20:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (10, 3, 1, 'Boston, MA', 'Hartford, CT', 'Boston Warehouse, 900 Harbor Blvd, Boston, MA', 'PICKED_UP', TIMESTAMP '2026-11-01 15:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (11, 3, 1, 'Hartford, CT', 'Storrs, CT', 'Hartford Hub, 1 Sorting Center Dr, Hartford, CT', 'ARRIVED', TIMESTAMP '2026-11-02 18:20:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (12, 3, 1, 'Storrs, CT', NULL, 'Storrs Store, 1 Dog Ln, Storrs, CT', 'ARRIVED', TIMESTAMP '2026-11-03 09:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (13, 3, 1, 'Storrs, CT', NULL, 'Storrs Store, 1 Dog Ln, Storrs, CT', 'DELIVERED', TIMESTAMP '2026-11-04 10:05:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (14, 4, 5, 'Boston, MA', 'Providence, RI', 'Boston Warehouse, 900 Harbor Blvd, Boston, MA', 'PICKED_UP', TIMESTAMP '2026-10-28 13:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (15, 4, 5, 'Providence, RI', NULL, 'Providence Depot, 20 Dock St, Providence, RI', 'ARRIVED', TIMESTAMP '2026-11-01 09:30:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (16, 4, 5, 'Providence, RI', NULL, 'Providence Depot, 20 Dock St, Providence, RI', 'DELIVERED', TIMESTAMP '2026-11-03 15:40:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (17, 5, 1, 'Providence, RI', 'Hartford, CT', 'Providence Depot, 20 Dock St, Providence, RI', 'PICKED_UP', TIMESTAMP '2026-11-03 12:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (18, 5, 1, 'Hartford, CT', 'Boston, MA', 'Hartford Hub, 1 Sorting Center Dr, Hartford, CT', 'ARRIVED', TIMESTAMP '2026-11-05 09:10:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (19, 6, 5, 'Cambridge, MA', 'New York, NY', 'Cambridge Depot, 15 Binney St, Cambridge, MA', 'PICKED_UP', TIMESTAMP '2026-10-30 10:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (20, 6, 5, 'New York, NY', 'Miami, FL', 'NYC Hub, 45 Gateway Dr, New York, NY', 'ARRIVED', TIMESTAMP '2026-11-02 07:45:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (21, 6, 3, 'New York, NY', 'Miami, FL', 'NYC Hub, 45 Gateway Dr, New York, NY', 'DEPARTED', TIMESTAMP '2026-11-04 05:30:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (22, 6, 3, 'Miami, FL', NULL, 'Miami Port Terminal, 1 Port Blvd, Miami, FL', 'ARRIVED', TIMESTAMP '2026-11-05 09:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (23, 6, 5, 'Miami, FL', NULL, 'Miami Port Terminal, 1 Port Blvd, Miami, FL', 'DELIVERED', TIMESTAMP '2026-11-08 14:10:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (24, 7, 1, 'Cambridge, MA', 'Albany, NY', 'Cambridge Depot, 15 Binney St, Cambridge, MA', 'PICKED_UP', TIMESTAMP '2026-11-05 17:30:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (25, 8, 5, 'Miami, FL', 'Rotterdam, Netherlands', 'Miami Port Terminal, 1 Port Blvd, Miami, FL', 'PICKED_UP', TIMESTAMP '2026-10-15 16:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (26, 8, 4, 'Miami, FL', 'Rotterdam, Netherlands', 'Miami Port Terminal, 1 Port Blvd, Miami, FL', 'DEPARTED', TIMESTAMP '2026-10-18 06:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (27, 8, 4, 'Rotterdam, Netherlands', NULL, 'Port of Rotterdam Terminal, Rotterdam, Netherlands', 'ARRIVED', TIMESTAMP '2026-10-31 08:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (28, 8, 4, 'Rotterdam, Netherlands', NULL, 'Port of Rotterdam Terminal, Rotterdam, Netherlands', 'DELIVERED', TIMESTAMP '2026-11-02 12:30:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (29, 9, 1, 'Storrs, CT', 'Hartford, CT', 'Storrs Store, 1 Dog Ln, Storrs, CT', 'PICKED_UP', TIMESTAMP '2026-11-06 11:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (30, 9, 1, 'Hartford, CT', 'Boston, MA', 'Hartford Hub, 1 Sorting Center Dr, Hartford, CT', 'ARRIVED', TIMESTAMP '2026-11-07 08:00:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (31, 9, 2, 'Hartford, CT', 'Boston, MA', 'Hartford Hub, 1 Sorting Center Dr, Hartford, CT', 'DEPARTED', TIMESTAMP '2026-11-09 06:30:00');
INSERT INTO tracking (tracking_id, package_id, transport_id, current_location, next_location, warehouse_address, event_type, event_time)
VALUES (32, 10, 1, 'Hartford, CT', 'Boston, MA', 'Hartford Hub, 1 Sorting Center Dr, Hartford, CT', 'PICKED_UP', TIMESTAMP '2026-11-08 15:00:00');

INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (1, 1, 1, 'CREDIT_CARD', 'N', '4242', 14.25, DATE '2026-10-20', 'PAID');
INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (2, 2, 2, 'CREDIT_CARD', 'N', '1881', 33.60, DATE '2026-10-25', 'REFUNDED');
INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (3, 3, 3, 'MONTHLY', 'N', NULL, 42.00, DATE '2026-11-01', 'PENDING');
INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (4, 3, 4, 'MONTHLY', 'N', NULL, 88.40, DATE '2026-10-28', 'PENDING');
INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (5, 4, 5, 'CREDIT_CARD', 'N', '0005', 21.90, DATE '2026-11-03', 'PAID');
INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (6, 5, 6, 'MONTHLY', 'Y', NULL, 215.00, DATE '2026-10-30', 'PAID');
INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (7, 5, 7, 'MONTHLY', 'Y', NULL, 9.50, DATE '2026-11-05', 'PAID');
INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (8, 6, 8, 'CREDIT_CARD', 'N', '7777', 64.00, DATE '2026-10-15', 'PAID');
INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (9, 1, 9, 'CREDIT_CARD', 'N', '4242', 76.30, DATE '2026-11-06', 'PAID');
INSERT INTO billing (billing_id, customer_id, order_id, billing_type, prepaid, card_last4, amount, billing_date, payment_status)
VALUES (10, 2, 10, 'CREDIT_CARD', 'N', '1881', 15.40, DATE '2026-11-08', 'PAID');

INSERT INTO return_orders (return_id, order_id, return_date, reason, refund_amount, return_status)
VALUES (1, 2, DATE '2026-11-02', 'Damaged in transit', 33.60, 'REFUNDED');
INSERT INTO return_orders (return_id, order_id, return_date, reason, refund_amount, return_status)
VALUES (2, 4, DATE '2026-11-09', 'Wrong item shipped', 88.40, 'REQUESTED');

INSERT INTO special_shipments (special_id, package_id, hazardous, hazmat_class, international, destination_country, customs_declaration_no, declared_value)
VALUES (1, 8, 'Y', 'Class 9 - Lithium Batteries', 'Y', 'Netherlands', 'CD-2026-009817', 450.00);
INSERT INTO special_shipments (special_id, package_id, hazardous, hazmat_class, international, destination_country, customs_declaration_no, declared_value)
VALUES (2, 9, 'Y', 'Class 3 - Flammable Liquid', 'N', NULL, NULL, NULL);
INSERT INTO special_shipments (special_id, package_id, hazardous, hazmat_class, international, destination_country, customs_declaration_no, declared_value)
VALUES (3, 10, 'Y', 'Class 8 - Corrosive', 'N', NULL, NULL, NULL);
INSERT INTO special_shipments (special_id, package_id, hazardous, hazmat_class, international, destination_country, customs_declaration_no, declared_value)
VALUES (4, 7, 'N', NULL, 'Y', 'Canada', 'CD-2026-010244', 120.00);