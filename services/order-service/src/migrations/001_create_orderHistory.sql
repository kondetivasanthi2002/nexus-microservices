-- Migration Schema Definition for order/orderHistory
CREATE TABLE tbl_order_orderHistory (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_orderHistory_status ON tbl_order_orderHistory(status);
CREATE INDEX idx_order_orderHistory_code ON tbl_order_orderHistory(code);
