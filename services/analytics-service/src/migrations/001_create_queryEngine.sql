-- Migration Schema Definition for analytics/queryEngine
CREATE TABLE tbl_analytics_queryEngine (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_analytics_queryEngine_status ON tbl_analytics_queryEngine(status);
CREATE INDEX idx_analytics_queryEngine_code ON tbl_analytics_queryEngine(code);
