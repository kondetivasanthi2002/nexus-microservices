-- Migration Schema Definition for order/invoiceBilling
CREATE TABLE tbl_order_invoiceBilling (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_invoiceBilling_status ON tbl_order_invoiceBilling(status);
CREATE INDEX idx_order_invoiceBilling_code ON tbl_order_invoiceBilling(code);
