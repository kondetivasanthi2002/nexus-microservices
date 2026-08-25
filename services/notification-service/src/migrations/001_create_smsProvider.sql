-- Migration Schema Definition for notification/smsProvider
CREATE TABLE tbl_notification_smsProvider (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_notification_smsProvider_status ON tbl_notification_smsProvider(status);
CREATE INDEX idx_notification_smsProvider_code ON tbl_notification_smsProvider(code);
