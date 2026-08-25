-- Migration Schema Definition for order/sagaOrchestrator
CREATE TABLE tbl_order_sagaOrchestrator (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_order_sagaOrchestrator_status ON tbl_order_sagaOrchestrator(status);
CREATE INDEX idx_order_sagaOrchestrator_code ON tbl_order_sagaOrchestrator(code);
