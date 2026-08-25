-- Migration Schema Definition for order/shippingFulfillment
CREATE TABLE tbl_order_shippingFulfillment (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_shippingFulfillment_status ON tbl_order_shippingFulfillment(status);
CREATE INDEX idx_order_shippingFulfillment_code ON tbl_order_shippingFulfillment(code);
