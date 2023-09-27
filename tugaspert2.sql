CREATE TABLE `FAKULTAS`  (
  `id` int NOT NULL,
  `nama_fakultas` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `KAMPUS`  (
  `id` int NOT NULL,
  `nama_kampus` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `LULUS`  (
  `id` int NOT NULL,
  `sks` varchar(255) NULL,
  `jumlah_sks` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `MAHASISWA`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  `nim` varchar(255) NULL,
  `jurusan` varchar(255) NULL,
  `kelas` varchar(255) NULL,
  `semester` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `MATA KULIAH`  (
  `id` int NOT NULL,
  `nama_matkul` varchar(255) NULL,
  `jenis_matkul` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `NILAI`  (
  `id` int NOT NULL,
  `nilai_uts` varchar(255) NULL,
  `nilai_uas` varchar(255) NULL,
  `nilai_quiz` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `LULUS` ADD CONSTRAINT `fk_table_6_table_5_1` FOREIGN KEY (`lulus`) REFERENCES `NILAI` (`nilai`);
ALTER TABLE `MAHASISWA` ADD CONSTRAINT `fk_MAHASISWA_FAKULTAS_1` FOREIGN KEY (`id`) REFERENCES `FAKULTAS` (`id`);
ALTER TABLE `MAHASISWA` ADD CONSTRAINT `fk_MAHASISWA_KAMPUS_1` FOREIGN KEY (`id`) REFERENCES `KAMPUS` (`id`);
ALTER TABLE `MAHASISWA` ADD CONSTRAINT `fk_MAHASISWA_NILAI_1` FOREIGN KEY (`id`) REFERENCES `NILAI` (`id`);
ALTER TABLE `NILAI` ADD CONSTRAINT `fk_table_5_table_4_1` FOREIGN KEY (`nilai`) REFERENCES `MATA KULIAH` (`mata_kuliah`);

