-- Migration Schema Definition for order/checkoutSession
CREATE TABLE tbl_order_checkoutSession (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_checkoutSession_status ON tbl_order_checkoutSession(status);
CREATE INDEX idx_order_checkoutSession_code ON tbl_order_checkoutSession(code);
