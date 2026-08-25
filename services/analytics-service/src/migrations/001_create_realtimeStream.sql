-- Migration Schema Definition for analytics/realtimeStream
CREATE TABLE tbl_analytics_realtimeStream (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_analytics_realtimeStream_status ON tbl_analytics_realtimeStream(status);
CREATE INDEX idx_analytics_realtimeStream_code ON tbl_analytics_realtimeStream(code);
