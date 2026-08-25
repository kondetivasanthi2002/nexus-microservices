-- Migration Schema Definition for order/stateTransition
CREATE TABLE tbl_order_stateTransition (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_stateTransition_status ON tbl_order_stateTransition(status);
CREATE INDEX idx_order_stateTransition_code ON tbl_order_stateTransition(code);
