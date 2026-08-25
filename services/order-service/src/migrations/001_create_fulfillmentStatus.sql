-- Migration Schema Definition for order/fulfillmentStatus
CREATE TABLE tbl_order_fulfillmentStatus (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_fulfillmentStatus_status ON tbl_order_fulfillmentStatus(status);
CREATE INDEX idx_order_fulfillmentStatus_code ON tbl_order_fulfillmentStatus(code);
