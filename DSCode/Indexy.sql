CREATE INDEX idx_castka on ucet (zustatek);

CREATE UNIQUE INDEX idx_cislo_uctu on ucet (cislo_uctu);

explain SELECT * FROM ucet;

DROP index idx_castka on ucet;

alter index idx_cislo_uctu on ucet REBUILD;