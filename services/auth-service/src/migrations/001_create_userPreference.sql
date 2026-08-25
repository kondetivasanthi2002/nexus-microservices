-- Migration Schema Definition for auth/userPreference
CREATE TABLE tbl_auth_userPreference (
  id VARCHAR(64) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(32) NOT NULL DEFAULT 'ACTIVE',
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_auth_userPreference_status ON tbl_auth_userPreference(status);
CREATE INDEX idx_auth_userPreference_code ON tbl_auth_userPreference(code);
