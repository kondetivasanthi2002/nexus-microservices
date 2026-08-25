-- Migration Schema Definition for payment/paymentGatewayAdapter
CREATE TABLE tbl_payment_paymentGatewayAdapter (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_payment_paymentGatewayAdapter_status ON tbl_payment_paymentGatewayAdapter(status);
CREATE INDEX idx_payment_paymentGatewayAdapter_code ON tbl_payment_paymentGatewayAdapter(code);
