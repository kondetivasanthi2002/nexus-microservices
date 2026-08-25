-- Migration Schema Definition for analytics/metricAggregation
CREATE TABLE tbl_analytics_metricAggregation (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_analytics_metricAggregation_status ON tbl_analytics_metricAggregation(status);
CREATE INDEX idx_analytics_metricAggregation_code ON tbl_analytics_metricAggregation(code);
