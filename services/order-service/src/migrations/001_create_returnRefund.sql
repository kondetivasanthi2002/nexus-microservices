-- Migration Schema Definition for order/returnRefund
CREATE TABLE tbl_order_returnRefund (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_returnRefund_status ON tbl_order_returnRefund(status);
CREATE INDEX idx_order_returnRefund_code ON tbl_order_returnRefund(code);
