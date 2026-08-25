-- Migration Schema Definition for api-gateway/responseCompressor
CREATE TABLE tbl_api-gateway_responseCompressor (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_api-gateway_responseCompressor_status ON tbl_api-gateway_responseCompressor(status);
CREATE INDEX idx_api-gateway_responseCompressor_code ON tbl_api-gateway_responseCompressor(code);
