-- Migration Schema Definition for api-gateway/rateLimiterBucket
CREATE TABLE tbl_api-gateway_rateLimiterBucket (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_api-gateway_rateLimiterBucket_status ON tbl_api-gateway_rateLimiterBucket(status);
CREATE INDEX idx_api-gateway_rateLimiterBucket_code ON tbl_api-gateway_rateLimiterBucket(code);
