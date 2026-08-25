-- Migration Schema Definition for notification/smsGateway
CREATE TABLE tbl_notification_smsGateway (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_notification_smsGateway_status ON tbl_notification_smsGateway(status);
CREATE INDEX idx_notification_smsGateway_code ON tbl_notification_smsGateway(code);
