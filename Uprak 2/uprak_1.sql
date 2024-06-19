{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "create database uprak_1"
            ],
            "metadata": {
                "azdata_cell_guid": "a2caddc9-9b7d-4dd1-89b5-e43fa0e6f661",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.021"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 4
        },
        {
            "cell_type": "code",
            "source": [
                "use uprak_1"
            ],
            "metadata": {
                "azdata_cell_guid": "c87a044a-7b29-4b3d-b63c-dcd5ffe5e85d",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.001"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 5
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE spp (\r\n",
                "    id INT PRIMARY KEY AUTO_INCREMENT,\r\n",
                "    tahun YEAR,\r\n",
                "    nominal BIGINT\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "7b7b29eb-8656-426c-976b-7b9b28fef06b",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.022"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 6
        },
        {
            "cell_type": "code",
            "source": [
                "\r\n",
                "CREATE TABLE admin (\r\n",
                "    id INT PRIMARY KEY,\r\n",
                "    nama_lengkap VARCHAR(50),\r\n",
                "    alamat VARCHAR(100),\r\n",
                "    no_hp VARCHAR(13),\r\n",
                "    username VARCHAR(50),\r\n",
                "    password VARCHAR(255)\r\n",
                ");\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "8e4f647d-e8df-4b5f-9a0e-a9d6bc4c4ffe",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.010"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 7
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE jurusan (\r\n",
                "    id INT PRIMARY KEY,\r\n",
                "    kode_jurusan VARCHAR(10),\r\n",
                "    deskripsi VARCHAR(50)\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "206b36c5-70b1-41e0-b517-8fb71acf6618",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.023"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 8
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE kelas (\r\n",
                "    id INT AUTO_INCREMENT PRIMARY KEY,\r\n",
                "    kode_kelas VARCHAR(10),\r\n",
                "    tingkat int,\r\n",
                "    jurusan_id INT,\r\n",
                "    FOREIGN KEY (jurusan_id) REFERENCES jurusan(id)\r\n",
                ");\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "8b14626d-d972-4a53-80ee-ac92a94bf1fc",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.062"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 9
        },
        {
            "cell_type": "code",
            "source": [
                "INSERT INTO jurusan (ID, KODE_JURUSAN, DESKRIPSI) VALUES\r\n",
                "(1, 'RPL', 'REKAYASA PERANGKAT LUNAK'),\r\n",
                "(2, 'TKRO', 'TEKNIK KENDARAAN RINGAN OTOMOTIF'),\r\n",
                "(3, 'TP', 'TEKNIK PERMESINAN');\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "411de684-b32a-4da8-9618-aca974f11e15",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.006"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 10
        },
        {
            "cell_type": "code",
            "source": [
                "INSERT INTO kelas (id, kode_kelas, tingkat, jurusan_id) VALUES\r\n",
                "(1, 'X-RPL', 10, 1),\r\n",
                "(2, 'XI-RPL', 11, 1),\r\n",
                "(3, 'XII-RPL', 12, 1),\r\n",
                "(4, 'X-TKRO-1', 10, 2),\r\n",
                "(5, 'X-TKRO-2', 10, 2),\r\n",
                "(6, 'XI-TKRO-1', 11, 2),\r\n",
                "(7, 'XI-TKRO-2', 11, 2),\r\n",
                "(8, 'XII-TKRO-1', 12, 2),\r\n",
                "(9, 'XII-TKRO-2', 12, 2),\r\n",
                "(10, 'X-TP', 10, 3),\r\n",
                "(11, 'XI-TP', 11, 3),\r\n",
                "(12, 'XII-TP', 12, 3);\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "47a02a35-7195-48a4-9784-991de61c0a27",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.018"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 11
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE siswa (\r\n",
                "    nis BIGINT PRIMARY KEY,\r\n",
                "    nama_lengkap VARCHAR(50),\r\n",
                "    tanggal_lahir DATE,\r\n",
                "    jenis_kelamin ENUM('L', 'P'),\r\n",
                "    alamat VARCHAR(100),\r\n",
                "    no_hp VARCHAR(13),\r\n",
                "    kelas_id INT,\r\n",
                "    spp_id INT,\r\n",
                "    FOREIGN KEY (kelas_id) REFERENCES kelas(id),\r\n",
                "    FOREIGN KEY (spp_id) REFERENCES spp(id)\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "f90230f5-160a-4dc6-9d08-a4794875cdeb",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.082"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 14
        },
        {
            "cell_type": "code",
            "source": [
                "INSERT INTO spp (TAHUN, NOMINAL) VALUES\r\n",
                "(2020, '150.000,00'),\r\n",
                "(2021, '175.000,00'),\r\n",
                "(2022, '200.000,00'),\r\n",
                "(2023, '225.000,00'),\r\n",
                "(2024, '250.000,00');\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "c563e7d1-a1fd-4203-8c71-05313adaf633",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.009"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 16
        },
        {
            "cell_type": "code",
            "source": [
                "INSERT INTO siswa (nis, nama_lengkap, jenis_kelamin, alamat, no_hp, tanggal_lahir, kelas_id, spp_id) VALUES\r\n",
                "(\"22001001\", \"SANTI RIMA\", \"Laki-laki\", \"CIWANGI\", \"081212344955\", \"2000-06-18\",12,3),\r\n",
                "(\"22001002\", \"SATRIA MELATI\", \"Perempuan\", \"CIMANUK\", \"081212344044\", \"2000-07-04\", 3,3),\r\n",
                "(\"22001003\", \"SANTI HANA\", \"Laki-laki\", \"CITALANG\", \"081212344711\", \"2000-05-04\", 11,4),\r\n",
                "(\"22001004\", \"SATRIA MELATI\", \"Perempuan\", \"CIMANUK\", \"0812123441787\", \"2000-08-14\", 10,5),\r\n",
                "(\"22001005\", \"RADEN SINTA\", \"Laki-laki\", \"CISEUREUH\", \"081212344722\", \"2000-01-12\", 1,5),\r\n",
                "(\"22001006\", \"SANTI LASMI\", \"Perempuan\", \"CIMAUNG\", \"081212344500\", \"2000-11-01\", 4,5),\r\n",
                "(\"22001007\", \"MUMUN MELATI\", \"Perempuan\", \"CIMAUNG\", \"081212344866\", \"2000-11-23\", 1,5),\r\n",
                "(\"22001008\", \"SANTI KENZO\", \"Perempuan\", \"CISEUREUH\", \"081212344066\", \"2000-01-19\", 8,3),\r\n",
                "(\"22001009\", \"MUMUN LASMI\", \"Perempuan\", \"CISEUREUH\", \"081212344577\", \"2000-11-06\", 11,4),\r\n",
                "(\"22001010\", \"MALA LASMI\", \"Perempuan\", \"CITALANG\", \"081212344999\", \"2000-11-24\", 11,4);\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "78294a9e-0e47-45b7-8318-653df3b9e93e",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.008"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 17
        },
        {
            "cell_type": "code",
            "source": [
                "ALTER TABLE siswa\r\n",
                "ADD COLUMN kode_kelas VARCHAR(10); -- Misalnya, tipe data INT sesuai dengan tipe data yang ada di kolom `id` pada tabel `Kelas`\r\n",
                "\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "e4855dfc-5bad-4930-ba03-c091368bf6c5",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.060"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 20
        },
        {
            "cell_type": "code",
            "source": [
                "delete from spp\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "9370cbda-2c35-4353-82e1-72a95f3899dc",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.048"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "error",
                    "evalue": "1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`uprak_1`.`siswa`, CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`spp_id`) REFERENCES `spp` (`id`))",
                    "ename": "",
                    "traceback": []
                }
            ],
            "execution_count": 37
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT siswa.*, spp.nominal\r\n",
                "        FROM siswa \r\n",
                "        LEFT JOIN spp ON siswa.spp_id = spp.id;"
            ],
            "metadata": {
                "azdata_cell_guid": "e141aa33-093d-4ec4-86e2-a4774f46eae4",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(10 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.093"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "metadata": {},
                    "execution_count": 36,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "nis"
                                    },
                                    {
                                        "name": "nama_lengkap"
                                    },
                                    {
                                        "name": "tanggal_lahir"
                                    },
                                    {
                                        "name": "jenis_kelamin"
                                    },
                                    {
                                        "name": "alamat"
                                    },
                                    {
                                        "name": "no_hp"
                                    },
                                    {
                                        "name": "kelas_id"
                                    },
                                    {
                                        "name": "spp_id"
                                    },
                                    {
                                        "name": "nominal"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "nis": "22001001",
                                    "nama_lengkap": "SANTI RIMA",
                                    "tanggal_lahir": "2000-06-18",
                                    "jenis_kelamin": "",
                                    "alamat": "CIWANGI",
                                    "no_hp": "081212344955",
                                    "kelas_id": "12",
                                    "spp_id": "3",
                                    "nominal": "200"
                                },
                                {
                                    "nis": "22001002",
                                    "nama_lengkap": "SATRIA MELATI",
                                    "tanggal_lahir": "2000-07-04",
                                    "jenis_kelamin": "",
                                    "alamat": "CIMANUK",
                                    "no_hp": "081212344044",
                                    "kelas_id": "3",
                                    "spp_id": "3",
                                    "nominal": "200"
                                },
                                {
                                    "nis": "22001003",
                                    "nama_lengkap": "SANTI HANA",
                                    "tanggal_lahir": "2000-05-04",
                                    "jenis_kelamin": "",
                                    "alamat": "CITALANG",
                                    "no_hp": "081212344711",
                                    "kelas_id": "11",
                                    "spp_id": "4",
                                    "nominal": "225"
                                },
                                {
                                    "nis": "22001004",
                                    "nama_lengkap": "SATRIA MELATI",
                                    "tanggal_lahir": "2000-08-14",
                                    "jenis_kelamin": "",
                                    "alamat": "CIMANUK",
                                    "no_hp": "0812123441787",
                                    "kelas_id": "10",
                                    "spp_id": "5",
                                    "nominal": "250"
                                },
                                {
                                    "nis": "22001005",
                                    "nama_lengkap": "RADEN SINTA",
                                    "tanggal_lahir": "2000-01-12",
                                    "jenis_kelamin": "",
                                    "alamat": "CISEUREUH",
                                    "no_hp": "081212344722",
                                    "kelas_id": "1",
                                    "spp_id": "5",
                                    "nominal": "250"
                                },
                                {
                                    "nis": "22001006",
                                    "nama_lengkap": "SANTI LASMI",
                                    "tanggal_lahir": "2000-11-01",
                                    "jenis_kelamin": "",
                                    "alamat": "CIMAUNG",
                                    "no_hp": "081212344500",
                                    "kelas_id": "4",
                                    "spp_id": "5",
                                    "nominal": "250"
                                },
                                {
                                    "nis": "22001007",
                                    "nama_lengkap": "MUMUN MELATI",
                                    "tanggal_lahir": "2000-11-23",
                                    "jenis_kelamin": "",
                                    "alamat": "CIMAUNG",
                                    "no_hp": "081212344866",
                                    "kelas_id": "1",
                                    "spp_id": "5",
                                    "nominal": "250"
                                },
                                {
                                    "nis": "22001008",
                                    "nama_lengkap": "SANTI KENZO",
                                    "tanggal_lahir": "2000-01-19",
                                    "jenis_kelamin": "",
                                    "alamat": "CISEUREUH",
                                    "no_hp": "081212344066",
                                    "kelas_id": "8",
                                    "spp_id": "3",
                                    "nominal": "200"
                                },
                                {
                                    "nis": "22001009",
                                    "nama_lengkap": "MUMUN LASMI",
                                    "tanggal_lahir": "2000-11-06",
                                    "jenis_kelamin": "",
                                    "alamat": "CISEUREUH",
                                    "no_hp": "081212344577",
                                    "kelas_id": "11",
                                    "spp_id": "4",
                                    "nominal": "225"
                                },
                                {
                                    "nis": "22001010",
                                    "nama_lengkap": "MALA LASMI",
                                    "tanggal_lahir": "2000-11-24",
                                    "jenis_kelamin": "",
                                    "alamat": "CITALANG",
                                    "no_hp": "081212344999",
                                    "kelas_id": "11",
                                    "spp_id": "4",
                                    "nominal": "225"
                                }
                            ]
                        },
                        "text/html": [
                            "<table>",
                            "<tr><th>nis</th><th>nama_lengkap</th><th>tanggal_lahir</th><th>jenis_kelamin</th><th>alamat</th><th>no_hp</th><th>kelas_id</th><th>spp_id</th><th>nominal</th></tr>",
                            "<tr><td>22001001</td><td>SANTI RIMA</td><td>2000-06-18</td><td></td><td>CIWANGI</td><td>081212344955</td><td>12</td><td>3</td><td>200</td></tr>",
                            "<tr><td>22001002</td><td>SATRIA MELATI</td><td>2000-07-04</td><td></td><td>CIMANUK</td><td>081212344044</td><td>3</td><td>3</td><td>200</td></tr>",
                            "<tr><td>22001003</td><td>SANTI HANA</td><td>2000-05-04</td><td></td><td>CITALANG</td><td>081212344711</td><td>11</td><td>4</td><td>225</td></tr>",
                            "<tr><td>22001004</td><td>SATRIA MELATI</td><td>2000-08-14</td><td></td><td>CIMANUK</td><td>0812123441787</td><td>10</td><td>5</td><td>250</td></tr>",
                            "<tr><td>22001005</td><td>RADEN SINTA</td><td>2000-01-12</td><td></td><td>CISEUREUH</td><td>081212344722</td><td>1</td><td>5</td><td>250</td></tr>",
                            "<tr><td>22001006</td><td>SANTI LASMI</td><td>2000-11-01</td><td></td><td>CIMAUNG</td><td>081212344500</td><td>4</td><td>5</td><td>250</td></tr>",
                            "<tr><td>22001007</td><td>MUMUN MELATI</td><td>2000-11-23</td><td></td><td>CIMAUNG</td><td>081212344866</td><td>1</td><td>5</td><td>250</td></tr>",
                            "<tr><td>22001008</td><td>SANTI KENZO</td><td>2000-01-19</td><td></td><td>CISEUREUH</td><td>081212344066</td><td>8</td><td>3</td><td>200</td></tr>",
                            "<tr><td>22001009</td><td>MUMUN LASMI</td><td>2000-11-06</td><td></td><td>CISEUREUH</td><td>081212344577</td><td>11</td><td>4</td><td>225</td></tr>",
                            "<tr><td>22001010</td><td>MALA LASMI</td><td>2000-11-24</td><td></td><td>CITALANG</td><td>081212344999</td><td>11</td><td>4</td><td>225</td></tr>",
                            "</table>"
                        ]
                    }
                }
            ],
            "execution_count": 36
        }
    ]
}