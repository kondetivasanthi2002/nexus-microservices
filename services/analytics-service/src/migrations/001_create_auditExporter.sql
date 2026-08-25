-- Migration Schema Definition for analytics/auditExporter
CREATE TABLE tbl_analytics_auditExporter (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_analytics_auditExporter_status ON tbl_analytics_auditExporter(status);
CREATE INDEX idx_analytics_auditExporter_code ON tbl_analytics_auditExporter(code);
