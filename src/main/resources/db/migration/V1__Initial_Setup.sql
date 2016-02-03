CREATE TABLE stellar_account_bridge_key (
  id              BIGINT GENERATED BY DEFAULT AS IDENTITY (
  START WITH 1
  INCREMENT BY 1 )                                                            NOT NULL,
  mifos_tenant_id VARCHAR(40)                                                 NOT NULL,
  rest_api_key    VARCHAR(40)                                                 NOT NULL,
  UNIQUE (mifos_tenant_id)
);


CREATE TABLE stellar_account_bridge (
  id                      BIGINT GENERATED BY DEFAULT AS IDENTITY (
  START WITH 1
  INCREMENT BY 1 )                                                            NOT NULL,
  mifos_tenant_id             VARCHAR(40)                                     NOT NULL,
  mifos_token                 VARCHAR(256)                                    NOT NULL,
  stellar_account_id          VARCHAR(60)                                     NOT NULL,
  stellar_account_private_key VARCHAR(60)                                     NOT NULL,
  UNIQUE (mifos_tenant_id)
);

CREATE TABLE mifos_event (
  id               BIGINT GENERATED BY DEFAULT AS IDENTITY (
  START WITH 1
  INCREMENT BY 1 )                                                               NOT NULL,
  payload          VARCHAR(4096)                                                 NOT NULL,
  processed        BOOLEAN                                                       NOT NULL,
  error_message    VARCHAR(256),
  created_on       TIMESTAMP                                                     NOT NULL,
  last_modified_on TIMESTAMP                                                     NOT NULL
);
