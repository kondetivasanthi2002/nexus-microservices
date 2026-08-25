-- Migration Schema Definition for payment/fraudScreening
CREATE TABLE tbl_payment_fraudScreening (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_payment_fraudScreening_status ON tbl_payment_fraudScreening(status);
CREATE INDEX idx_payment_fraudScreening_code ON tbl_payment_fraudScreening(code);
