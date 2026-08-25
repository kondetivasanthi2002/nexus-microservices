-- Migration Schema Definition for payment/disputeChargeback
CREATE TABLE tbl_payment_disputeChargeback (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_payment_disputeChargeback_status ON tbl_payment_disputeChargeback(status);
CREATE INDEX idx_payment_disputeChargeback_code ON tbl_payment_disputeChargeback(code);
