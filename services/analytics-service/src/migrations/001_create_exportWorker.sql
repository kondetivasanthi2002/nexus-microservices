-- Migration Schema Definition for analytics/exportWorker
CREATE TABLE tbl_analytics_exportWorker (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_analytics_exportWorker_status ON tbl_analytics_exportWorker(status);
CREATE INDEX idx_analytics_exportWorker_code ON tbl_analytics_exportWorker(code);
