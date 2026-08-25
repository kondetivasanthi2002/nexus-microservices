-- Migration Schema Definition for order/discountApplier
CREATE TABLE tbl_order_discountApplier (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_discountApplier_status ON tbl_order_discountApplier(status);
CREATE INDEX idx_order_discountApplier_code ON tbl_order_discountApplier(code);
