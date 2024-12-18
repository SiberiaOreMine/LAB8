CREATE TABLE ВРАЧИ (
    ID_врача INT PRIMARY KEY AUTO_INCREMENT,
    ФИО_врача VARCHAR(255) NOT NULL,
    Специальность_врача VARCHAR(100) NOT NULL,
    Стоимость_приема DECIMAL(10, 2) NOT NULL,
    Процент_отчисления_на_зарплату DECIMAL(5, 2) NOT NULL
);

CREATE TABLE ПАЦИЕНТЫ (
    ID_пациента INT PRIMARY KEY AUTO_INCREMENT,
    ФИО_пациента VARCHAR(255) NOT NULL,
    Дата_рождения_пациента DATE NOT NULL,
    Адрес_пациента VARCHAR(255)
);

CREATE TABLE ПРИЕМ_ПАЦИЕНТОВ (
    ID_приема INT PRIMARY KEY AUTO_INCREMENT,
    ID_врача INT,
    ID_пациента INT,
    Дата_приема DATE NOT NULL,
    FOREIGN KEY (ID_врача) REFERENCES ВРАЧИ(ID_врача),
    FOREIGN KEY (ID_пациента) REFERENCES ПАЦИЕНТЫ(ID_пациента)
);
CREATE TABLE КВИТАНЦИИ (
    ID_квитанции INT PRIMARY KEY AUTO_INCREMENT,
    ID_приема INT,
    Сумма_оплаты DECIMAL(10, 2) NOT NULL,
    Дата_квитанции DATE NOT NULL,
    FOREIGN KEY (ID_приема) REFERENCES ПРИЕМ_ПАЦИЕНТОВ(ID_приема)
);