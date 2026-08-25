-- Migration Schema Definition for payment/ledgerAuditor
CREATE TABLE tbl_payment_ledgerAuditor (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_payment_ledgerAuditor_status ON tbl_payment_ledgerAuditor(status);
CREATE INDEX idx_payment_ledgerAuditor_code ON tbl_payment_ledgerAuditor(code);
