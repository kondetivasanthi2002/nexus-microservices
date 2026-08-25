-- Migration Schema Definition for analytics/metricCollector
CREATE TABLE tbl_analytics_metricCollector (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_analytics_metricCollector_status ON tbl_analytics_metricCollector(status);
CREATE INDEX idx_analytics_metricCollector_code ON tbl_analytics_metricCollector(code);
