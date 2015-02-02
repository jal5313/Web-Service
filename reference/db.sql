create table Account (
    ID bigint unsigned NOT NULL AUTO_INCREMENT,
    username varchar(256) NOT NULL,
    hash binary(118) NOT NULL,
    time int unsigned NOT NULL,
    authToken char(32) NOT NULL,

    PRIMARY KEY (ID)
);

create table Node (
    ID bigint unsigned NOT NULL AUTO_INCREMENT,
    nodeId bigint unsigned NOT NULL,
    type int unsigned NOT NULL,
    time int unsigned NOT NULL,

    PRIMARY KEY (ID)
);

create table SwitchNodeProperties (
    ID bigint unsigned NOT NULL,
    name varchar(100) NOT NULL,
    btn_on varchar(100) NOT NULL,
    btn_off varchar(100) NOT NULL,

    PRIMARY KEY (ID),
    FOREIGN KEY (ID) REFERENCES Node(ID)
);


INSERT INTO Account VALUES (
    0,
    'admin',
    '$6$rounds=5000$oMÔIÈ¿ºº1Oréà$uUTLM1U2EC9evV6QgFfD17LXfOQkX0bZhMyL7duBHPZPT4l6IbuoHyMPyrJcf2x2JclO6yvT71lDE16IJFeBA1',
    UNIX_TIMESTAMP(),
    '0'
);
