﻿CREATE TABLE [dbo].['Реестр ДУ по ЦАО$'] (
  [№ п/п] [float] NULL,
  [Дата монтажа указанная Исполнителем] [datetime] NULL,
  [Осмотрен] [nvarchar](255) NULL,
  [Ответственный сотрудник   ] [nvarchar](255) NULL,
  [Дата осмотра] [datetime] NULL,
  [Факт установки ДУ] [nvarchar](255) NULL,
  [Уникальныйномеринформационногоуказателя] [nvarchar](255) NULL,
  [Тип домового указателя] [nvarchar](255) NULL,
  [Округ] [nvarchar](255) NULL,
  [Район] [nvarchar](255) NULL,
  [Улица, просп#, пер# и проч] [nvarchar](255) NULL,
  [Дом, корп#, стр# и проч] [nvarchar](255) NULL,
  [Место установки ДУ на фасаде здания] [nvarchar](255) NULL,
  [Ориентирован на восприятие с улицы по привязке] [nvarchar](255) NULL,
  [Улица с односторонним движением] [nvarchar](255) NULL,
  [Материал стен фасада] [nvarchar](255) NULL,
  [Реконструкция фасада] [nvarchar](255) NULL,
  [Длина фасада здания более 100 м] [nvarchar](255) NULL,
  [Указатель размещен на ограждении] [nvarchar](255) NULL,
  [Просматриваемость] [nvarchar](255) NULL,
  [Состояние ДУ] [nvarchar](255) NULL,
  [Соответствие факт# места установки тех# Паспорту] [nvarchar](255) NULL,
  [Расстояние до места установки по отметке тех паспорта (м#)] [float] NULL,
  [По высоте от уровня земли] [nvarchar](255) NULL,
  [Высота в метрах (если не соответствует)] [nvarchar](255) NULL,
  [По расстоянию от угла здания] [nvarchar](255) NULL,
  [Расстояние от угла в метрах (если не соответствует)] [nvarchar](255) NULL,
  [По расположению на фасаде] [nvarchar](255) NULL,
  [По единому горизонтальному уровню] [nvarchar](255) NULL,
  [Содержание инф# полей_(Нанесенный текст)] [nvarchar](255) NULL,
  [Содержание инф# полей (Цветовое решение)] [nvarchar](255) NULL,
  [Содержание инф# полей (Используемые шрифты)] [nvarchar](255) NULL,
  [Содержание инф# полей (Используемые пиктограммы)] [nvarchar](255) NULL,
  [Информационное содержание указателя (Улица)] [nvarchar](255) NULL,
  [Улица (транслит#)] [nvarchar](255) NULL,
  [Информационное содержание указателя (Дом)] [nvarchar](255) NULL,
  [С транслитерацией/без] [nvarchar](255) NULL,
  [Установка распаячной коробки] [nvarchar](255) NULL,
  [Ввод кабеля электропитания в сторону короба] [nvarchar](255) NULL,
  [Требования по прокладке линии электропитания] [nvarchar](255) NULL,
  [Распаячная коробка подключена к внешним линиям электропитания] [nvarchar](255) NULL,
  [Есть ли возможность электрического подключения распаячной коробк] [nvarchar](255) NULL,
  [Ранее установленный ДУ] [nvarchar](255) NULL,
  [Восстановление фасада после демонтажа] [nvarchar](255) NULL,
  [Примерная площадь восстановления (если требуется)] [float] NULL,
  [Восстановление фасада после монтажа ДУ] [nvarchar](255) NULL,
  [Вывоз техники, инвентаря, оборудования] [nvarchar](255) NULL,
  [Проверка работы подсвета (Дата проверки)] [nvarchar](255) NULL,
  [Проверка работы подсвета (Состояние)] [nvarchar](255) NULL,
  [Фотофиксация подсвета (произведена/не произведена)] [nvarchar](255) NULL,
  [Сотрудник проверивший работу подсвета] [nvarchar](255) NULL,
  [Иные нарушения внешнего вида и технического состояния] [nvarchar](255) NULL,
  [Заключение] [nvarchar](255) NULL,
  [Тип нарушения внешнего вида и технического состояния] [nvarchar](255) NULL,
  [Тип необходимых работ] [nvarchar](255) NULL,
  [Примечание] [nvarchar](255) NULL,
  [Дата отправки информации Исполнителю] [datetime] NULL,
  [Сотрудник, заносивший данные в реестр] [nvarchar](255) NULL,
  [Координата X (ЕГКО)] [nvarchar](255) NULL,
  [Координата Y (ЕГКО)] [nvarchar](255) NULL,
  [Соответствие указанного на ДУ адреса, адресу  его установки] [nvarchar](255) NULL,
  [Указанный адрес существует в Москве] [nvarchar](255) NULL,
  [Здание с указанным адресом существует в Москве] [nvarchar](255) NULL,
  [Ответственная организация (наименование, контактное лицо, телефо] [nvarchar](255) NULL,
  [Отметка о занесении в АСУ (Инвентарный номер)] [nvarchar](255) NULL,
  [Дата занесения информации в АСУ] [nvarchar](255) NULL,
  [Сотрудник занесший данные в АСУ] [nvarchar](255) NULL,
  [Дата установки ДУ по графику ДЖКХиБ] [nvarchar](255) NULL,
  [Год реализации по госконтрату] [float] NULL,
  [Этап работ] [nvarchar](255) NULL,
  [Мероприятие в рамках которого установлен ДУ] [nvarchar](255) NULL,
  [ДУ по проекту, либо дополнительный] [nvarchar](255) NULL,
  [Планируемая Исполнителем дата монтажа] [nvarchar](255) NULL,
  [Дата поступления информация в отдел мониторинга] [nvarchar](255) NULL,
  [Размер (мм)] [nvarchar](255) NULL,
  [Общая площадь (кв#м)] [float] NULL,
  [Должность сотрудника обследовавшего ДУ] [nvarchar](255) NULL,
  [Должность сотрудника проверившего подсвет ДУ] [nvarchar](255) NULL,
  [Должность сотрудника занесшего нформацию в АСУ] [nvarchar](255) NULL,
  [Тип улиц-магистралей] [nvarchar](255) NULL,
  [Управляющая компания] [nvarchar](255) NULL,
  [Транслитерация по проекту] [nvarchar](255) NULL,
  [Тип информационного указателя в соответствии с точечной дислокац] [nvarchar](255) NULL,
  [Источник] [nvarchar](255) NULL,
  [Дата составления акта] [nvarchar](255) NULL,
  [Должность сотрудника] [nvarchar](255) NULL,
  [Фамилия И#О#] [nvarchar](255) NULL,
  [Форма доклада] [nvarchar](255) NULL,
  [Отметка о наличии подписанного акта в архиве] [nvarchar](255) NULL,
  [Здание находится в пределах Садового кольца] [nvarchar](255) NULL,
  [Категория улицы из АСУ ОДС] [nvarchar](255) NULL,
  [Рекомендуемый тип по лицевым фасадам] [nvarchar](255) NULL,
  [Повторная проверка] [nvarchar](255) NULL,
  [Соответствеие БТИ] [nvarchar](255) NULL,
  [Наличие адреса в списке БТИ 19520] [nvarchar](255) NULL,
  [F96] [nvarchar](255) NULL,
  [F97] [nvarchar](255) NULL,
  [F98] [nvarchar](255) NULL,
  [F99] [nvarchar](255) NULL,
  [F100] [nvarchar](255) NULL,
  [F101] [nvarchar](255) NULL,
  [F102] [nvarchar](255) NULL,
  [F103] [nvarchar](255) NULL,
  [F104] [nvarchar](255) NULL,
  [F105] [nvarchar](255) NULL,
  [F106] [nvarchar](255) NULL,
  [F107] [nvarchar](255) NULL,
  [F108] [nvarchar](255) NULL,
  [F109] [nvarchar](255) NULL,
  [F110] [nvarchar](255) NULL,
  [F111] [nvarchar](255) NULL,
  [F112] [nvarchar](255) NULL,
  [F113] [nvarchar](255) NULL,
  [F114] [nvarchar](255) NULL,
  [F115] [nvarchar](255) NULL,
  [F116] [nvarchar](255) NULL,
  [F117] [nvarchar](255) NULL,
  [F118] [nvarchar](255) NULL,
  [F119] [nvarchar](255) NULL,
  [F120] [nvarchar](255) NULL,
  [F121] [nvarchar](255) NULL,
  [F122] [nvarchar](255) NULL,
  [F123] [nvarchar](255) NULL,
  [F124] [nvarchar](255) NULL,
  [F125] [nvarchar](255) NULL,
  [F126] [nvarchar](255) NULL,
  [F127] [nvarchar](255) NULL,
  [F128] [nvarchar](255) NULL,
  [F129] [nvarchar](255) NULL,
  [F130] [nvarchar](255) NULL,
  [F131] [nvarchar](255) NULL,
  [F132] [nvarchar](255) NULL,
  [F133] [nvarchar](255) NULL,
  [F134] [nvarchar](255) NULL,
  [F135] [nvarchar](255) NULL,
  [F136] [nvarchar](255) NULL,
  [F137] [nvarchar](255) NULL,
  [F138] [nvarchar](255) NULL,
  [F139] [nvarchar](255) NULL,
  [F140] [nvarchar](255) NULL,
  [F141] [nvarchar](255) NULL,
  [F142] [nvarchar](255) NULL,
  [F143] [nvarchar](255) NULL,
  [F144] [nvarchar](255) NULL,
  [F145] [nvarchar](255) NULL,
  [F146] [nvarchar](255) NULL,
  [F147] [nvarchar](255) NULL,
  [F148] [nvarchar](255) NULL,
  [F149] [nvarchar](255) NULL,
  [F150] [nvarchar](255) NULL,
  [F151] [nvarchar](255) NULL,
  [F152] [nvarchar](255) NULL,
  [F153] [nvarchar](255) NULL,
  [F154] [nvarchar](255) NULL,
  [F155] [nvarchar](255) NULL,
  [F156] [nvarchar](255) NULL,
  [F157] [nvarchar](255) NULL,
  [F158] [nvarchar](255) NULL,
  [F159] [nvarchar](255) NULL,
  [F160] [nvarchar](255) NULL,
  [F161] [nvarchar](255) NULL,
  [F162] [nvarchar](255) NULL,
  [F163] [nvarchar](255) NULL,
  [F164] [nvarchar](255) NULL,
  [F165] [nvarchar](255) NULL,
  [F166] [nvarchar](255) NULL,
  [F167] [nvarchar](255) NULL,
  [F168] [nvarchar](255) NULL,
  [F169] [nvarchar](255) NULL,
  [F170] [nvarchar](255) NULL,
  [F171] [nvarchar](255) NULL,
  [F172] [nvarchar](255) NULL,
  [F173] [nvarchar](255) NULL,
  [F174] [nvarchar](255) NULL,
  [F175] [nvarchar](255) NULL,
  [F176] [nvarchar](255) NULL,
  [F177] [nvarchar](255) NULL,
  [F178] [nvarchar](255) NULL,
  [F179] [nvarchar](255) NULL,
  [F180] [nvarchar](255) NULL,
  [F181] [nvarchar](255) NULL,
  [F182] [nvarchar](255) NULL,
  [F183] [nvarchar](255) NULL,
  [F184] [nvarchar](255) NULL,
  [F185] [nvarchar](255) NULL,
  [F186] [nvarchar](255) NULL,
  [F187] [nvarchar](255) NULL,
  [F188] [nvarchar](255) NULL,
  [F189] [nvarchar](255) NULL,
  [F190] [nvarchar](255) NULL,
  [F191] [nvarchar](255) NULL,
  [F192] [nvarchar](255) NULL,
  [F193] [nvarchar](255) NULL,
  [F194] [nvarchar](255) NULL,
  [F195] [nvarchar](255) NULL,
  [F196] [nvarchar](255) NULL,
  [F197] [nvarchar](255) NULL,
  [F198] [nvarchar](255) NULL,
  [F199] [nvarchar](255) NULL,
  [F200] [nvarchar](255) NULL,
  [F201] [nvarchar](255) NULL
)
ON [PRIMARY]
GO