-- Migration Schema Definition for payment/vaultToken
CREATE TABLE tbl_payment_vaultToken (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_payment_vaultToken_status ON tbl_payment_vaultToken(status);
CREATE INDEX idx_payment_vaultToken_code ON tbl_payment_vaultToken(code);
