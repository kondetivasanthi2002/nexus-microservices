-- Migration Schema Definition for analytics/eventConsumerPipeline
CREATE TABLE tbl_analytics_eventConsumerPipeline (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_analytics_eventConsumerPipeline_status ON tbl_analytics_eventConsumerPipeline(status);
CREATE INDEX idx_analytics_eventConsumerPipeline_code ON tbl_analytics_eventConsumerPipeline(code);
