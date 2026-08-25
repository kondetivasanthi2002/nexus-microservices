-- Migration Schema Definition for order/orderItemDetail
CREATE TABLE tbl_order_orderItemDetail (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_orderItemDetail_status ON tbl_order_orderItemDetail(status);
CREATE INDEX idx_order_orderItemDetail_code ON tbl_order_orderItemDetail(code);
